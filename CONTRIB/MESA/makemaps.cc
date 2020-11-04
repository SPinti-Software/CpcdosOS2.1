#include <cstdio>
#include <cmath>
#include <vector>
#include <cstring>
#include <utility>
#include <algorithm>

typedef float GLfloat;

// Generate a very simple rectangle of a texture.
const unsigned txW=256, txH=256;
GLfloat texture[txH*txW];

#include "math.tcc"
#include "map.tcc"

static void Bilinear(
    const float* sourcemap, unsigned sw, unsigned sh,
    XYZ<float>& color, double sx, double sy)
{
    unsigned intsx = (unsigned)sx; sx -= intsx; // intsx = trunc(sx); sx = frac(sx);
    unsigned intsy = (unsigned)sy; sy -= intsy; // intsy = trunc(sy); sy = frac(sy);
    unsigned nextsx = std::min(sw-1u, intsx+1u);
    unsigned nextsy = std::min(sh-1u, intsy+1u);
    const XYZ<float>& raboveint  = *(const XYZ<float>*) &sourcemap[ 3 * (intsy  * sw + intsx  ) ];
    const XYZ<float>& rabovenext = *(const XYZ<float>*) &sourcemap[ 3 * (intsy  * sw + nextsx ) ];
    const XYZ<float>& rbelowint  = *(const XYZ<float>*) &sourcemap[ 3 * (nextsy * sw + intsx  ) ];
    const XYZ<float>& rbelownext = *(const XYZ<float>*) &sourcemap[ 3 * (nextsy * sw + nextsx ) ];
    auto above = raboveint + (rabovenext-raboveint)*sx;
    auto below = rbelowint + (rbelownext-rbelowint)*sx;
    color += (above + (below-above)*sy);
}

static void MakeLightMaps(bool finalizing)
{
    const unsigned narealightcomponents = 512;//64
    const double area_light_radius       = 0.2;
    const unsigned nrandomvectors        = 1024;//8192;
    const unsigned maxrounds             = 100;
    const double fade_distance_diffuse   = 2.0;
    const double fade_distance_radiosity = 2.0;
    const double radiomul = 1.0;

    const unsigned nwalls = sizeof(map) / sizeof(*map);
    struct wallmeta
    {
        unsigned width, height;
        unsigned lmW, lmH;
        unsigned rmW, rmH;
        // The total rendered outcome:
        std::vector<float> total_lmap;
        // The outcome of last rendering round, not including preceding rounds:
        std::vector<float> last_lmap;
        // Outcome of current round
        std::vector<float> new_lmap;

        void ReadLightmapAt(double rx,double ry, XYZ<float>& color) const
        {
            Bilinear(&last_lmap[0], lmW,lmH, color, rx*lmW, ry*lmH);
        }
    } walls[nwalls];

    auto SaveMap = [&](unsigned wallno, std::vector<float>& map)
    {
        const wallmeta& meta = walls[wallno];
    	unsigned lmW    = meta.lmW;
    	unsigned lmH    = meta.lmH;
    	unsigned width  = meta.width;
    	unsigned height = meta.height;

        bool add_map_needed = false;
        for(size_t a=0; a<map.size(); ++a)
            map[a] = std::pow( map[a] * 3.0, 1/1.4 );

        // Because OSMesa clamps all texture values into [0,1] range,
        // meaning that a lightsource can only darken the texture, never
        // brighten it, we must do a pre-pass that splits the texture into
        // a multiply-map and an add-map, where the multiply-map can darken
        // the texture and the add-map can brighten it. Unfortunately, to produce
        // an add-map we must also access the underlying texture, because
        // otherwise we are producing lighting that has no basis in physics.

        std::vector<float> map2( lmW*lmH*3 );
        for(size_t a=0; a<map.size(); a += 3)
            if(map[a] > 1.0 || map[a+1] > 1.0 || map[a+2] > 1.0)
            {
                add_map_needed = true;
                unsigned lmpos = (a/3), lmx = lmpos % lmW, lmy = lmpos / lmW;
                unsigned x0 = lmx     * ( width * txW) / lmW;
                unsigned y0 = lmy     * (height * txH) / lmH;
                unsigned x1 = (lmx+1) * ( width * txW) / lmW;
                unsigned y1 = (lmy+1) * (height * txH) / lmH;
                double texel = 0.0;
                for(unsigned x=x0; x<x1; ++x)
                    for(unsigned y=y0; y<y1; ++y)
                        texel += texture[(y % txH)*txW + (x % txW)];
                texel /= ((x1-x0) * (y1-y0));
                for(unsigned b=0; b<3; ++b)
                   if(map[a+b] > 1.0)
                       { // Put in add_map that which we would miss because of Mesa's clamping
                         map2[a+b] = texel * (map[a+b] - 1.0);
                         map[a+b] = 1.0; }
                // Calculate what should be presented to the user now
                double rgbf[3] = { texel * map[a+0] + map2[a+0],
                                   texel * map[a+1] + map2[a+1],
                                   texel * map[a+2] + map2[a+2] };
                // If there still are >1 components, desaturate as needed
                double l = rgbf[0]*0.299 + rgbf[1]*0.587 + rgbf[2]*0.114;
                if(l >= 1.0)      rgbf[0] = rgbf[1] = rgbf[2] = 1.0;
                else if(l <= 0.0) rgbf[0] = rgbf[1] = rgbf[2] = 0.0;
                else
                {
                    double s = 1.0;
                    for(unsigned n=0; n<3; ++n)
                        if(rgbf[n] > 1.0) s = std::min(s, (l-1.0) / (l-rgbf[n]));
                        else if(rgbf[n] < 0.0) s = std::min(s, l  / (l-rgbf[n]));
                    if(s != 1.0)
                        for(unsigned n=0; n<3; ++n) rgbf[n] = (rgbf[n] - l) * s + l;
                }
                map2[a+0] = std::min(1.0, rgbf[0] - texel * map[a+0]);
                map2[a+1] = std::min(1.0, rgbf[1] - texel * map[a+1]);
                map2[a+2] = std::min(1.0, rgbf[2] - texel * map[a+2]);
            }

        char Buf[64]; std::sprintf(Buf, "lmap%u.raw", wallno);
        FILE* fp = std::fopen(Buf, "wb");
        if(!fp) std::perror(Buf);
        std::fwrite(&map[0], map.size(), sizeof(float), fp);
        std::fclose(fp);

        std::sprintf(Buf, "smap%u.raw", wallno);
        if(add_map_needed)
        {
            FILE* fp = std::fopen(Buf, "wb");
            if(!fp) std::perror(Buf);
            std::fwrite(&map2[0], map2.size(), sizeof(float), fp);
            std::fclose(fp);
        }
        else
            std::remove(Buf);
    };

    for(unsigned wallno=0; wallno<nwalls; ++wallno)
    {
        const maptype& m = map[wallno];
        auto v30 = m.p[3] - m.p[0], v10 = m.p[1] - m.p[0];
        wallmeta& meta = walls[wallno];
        meta.width  = v30.Len();
        meta.height = v10.Len();
        meta.lmW = 32u * v30.Len();
        meta.lmH = 32u * v10.Len();
        meta.rmW = 16u * v30.Len();
        meta.rmH = 16u * v10.Len();
        meta.total_lmap.resize( meta.lmW * meta.lmH * 3);
        meta.last_lmap.resize( meta.lmW * meta.lmH * 3);

        if(finalizing)
        {
            std::vector<float>& out = meta.total_lmap;

            char Buf[64]; std::sprintf(Buf, "rmap%u.raw", wallno);
            FILE* fp = std::fopen(Buf, "rb");
            if(fp)
            {
                std::fread(&out[0], out.size(), sizeof(float), fp);
                std::fclose(fp);
                SaveMap(wallno, out);
            }
        }
    }

    if(finalizing)
    {
        return;
    }

    for(unsigned round=1; round<=maxrounds; ++round)
    {
        fprintf(stderr, "Lighting calculation, round %u...\n", round);

        struct { double s, c, d; } rvec[nrandomvectors];
        for(unsigned n=0; n<nrandomvectors; ++n)
        {
            double angle = std::rand()/1e6;
            double angle2 = std::pow((std::rand()%10000)/10000.0, 1.3);
            rvec[n].s = std::sin(angle);
            rvec[n].c = std::cos(angle);
            rvec[n].d = std::tan(angle2*M_PI/2); // 0..+inf
        }

        for(unsigned wallno=0; wallno<nwalls; ++wallno)
        {
            const maptype& m = map[wallno];
            wallmeta& meta = walls[wallno];
            auto v30 = m.p[3] - m.p[0], v10 = m.p[1] - m.p[0];
            std::vector<float>& lmap = meta.new_lmap;
            // Set up a workbench
            lmap.resize( meta.lmW * meta.lmH * 3 );
            std::memset(&lmap[0], 0, sizeof(lmap[0]) * lmap.size() );

            if(round == 1)
            {
                // A lightsource is represented by a spherical cloud
                // of smaller lightsources around the actual lightsource.
                // This achieves smooth edges for the shadows.
                XYZ<double> tvec[narealightcomponents];
                #define drand(m) ((std::rand()%1000-500)*5e-2*m)
                for(unsigned qa=0; qa<narealightcomponents; ++qa)
                {
                    tvec[qa] = {{ drand(100.0), drand(100.0), drand(100.0) }};
                    tvec[qa] *= area_light_radius / tvec[qa].Len();
                }
                #undef drand

                // Round 1: Check lightsources
                for(unsigned y=0; y<meta.lmH; ++y)
                {
                    fprintf(stderr, "- Wall %u/%u %u/%u diffuse light...\r", wallno, nwalls, y,meta.lmH);
                    #pragma omp parallel for
                    for(unsigned x=0; x<meta.lmW; ++x)
                    {
                        XYZ<float>& color = *(XYZ<float>*)&lmap[ (x + y*meta.lmW)*3 ];
                        auto p = m.p[0] + v30 * (.01 + .98 * x/(double)(meta.lmW-1))
                                        + v10 * (.01 + .98 * y/(double)(meta.lmH-1));
                        // For each lightsource, check if there is an obstacle
                        // in between this vertex and the lightsource. Calculate
                        // the ambient light levels from the fact.
                        // This simulates diffuse light.
                        auto begin = p + m.normal * 1e-2;
                        for(unsigned qq=0; qq<sizeof(lights)/sizeof(*lights); ++qq)
                        {
                            const lighttype& l = lights[qq];
                            for(unsigned qa=0; qa<narealightcomponents; ++qa)
                            {
                                auto towards = l.pos - p + tvec[qa];
                                double len = towards.Len();
                                towards /= len;
                                double cosine = m.normal.Dot(towards);
                                const double fade_distance = fade_distance_diffuse;
                                double power = cosine / (1. + std::pow(len/fade_distance, 2.0));
                                power /= (double) narealightcomponents;
                                if(power > 1e-7)
                                {
                                    HitRec tmp = IntersectRay(begin, towards, map);
                                    if(!tmp.set() || tmp.distance > len)
                                        color += l.dif * power;
                }   }   }   }   }
            }
            else
            {
                // Round 2+: Radiosity
                auto v10abs = v10.Normalized();
                auto v30abs = v30.Normalized();

                // Apply the set of random vectors to this surface.
                // This produces a set of vectors all pointing away
                // from the wall to random directions.
                XYZ<double> tvec[nrandomvectors];
                double      tcos[nrandomvectors];
                for(unsigned qq=0; qq<nrandomvectors; ++qq)
                {
                    tvec[qq] = (m.normal * rvec[qq].d
                                + v30abs * rvec[qq].s
                                + v10abs * rvec[qq].c).Normalized();
                    tcos[qq] = m.normal.Dot(tvec[qq]); // precalculate the cosine
                }

                // Calculate radiosity in decreased resolution
                std::vector<float> rmap(meta.rmW * meta.rmH * 3);

                for(unsigned y=0; y<meta.rmH; ++y)
                {
                    fprintf(stderr, "- Wall %u/%u %u/%u radiosity...\r", wallno, nwalls, y,meta.rmH);
                    #pragma omp parallel for
                    for(unsigned x=0; x<meta.rmW; ++x)
                    {
                        XYZ<float>& color = *(XYZ<float>*)&rmap[ (x + y*meta.rmW)*3 ];
                        auto p = m.p[0] + v30 * (.01 + .98 * x/(double)(meta.rmW-1))
                                        + v10 * (.01 + .98 * y/(double)(meta.rmH-1));
                        // Shoot rays to each random direction and see what it hits.
                        // Take the last round's light value from that location.
                        auto begin = p + m.normal * 1e-2;
                        double basepower = radiomul / nrandomvectors;
                        for(unsigned qq=0; qq<nrandomvectors; ++qq)
                        {
                            auto& towards  = tvec[qq];
                            double cosine = tcos[qq];

                            HitRec hit = IntersectRay(begin, towards, map);
                            if(hit.set())
                            {
                                double len = hit.distance;
                                XYZ<float> tmp = {{0,0,0}};
                                walls[hit.wallno].ReadLightmapAt(hit.beta, hit.alpha, tmp);
                                const double fade_distance = fade_distance_radiosity;
                                double value = basepower/(1. + std::pow(len/fade_distance,2.0));
                                color += tmp * (value * cosine);
                }   }   }   }
                for(unsigned y=0; y<meta.lmH; ++y)
                {
                    fprintf(stderr, "- Wall %u/%u %u/%u scaling...\r", wallno, nwalls, y,meta.lmH);
                    #pragma omp parallel for
                    for(unsigned x=0; x<meta.lmW; ++x)
                    {
                        XYZ<float>& color = *(XYZ<float>*)&lmap[ (x + y*meta.lmW)*3 ];
                        // Add the previously calculated radiosity. Because the
                        // radiosity bitmap is smaller, bilinearly interpolate it.
                        Bilinear(&rmap[0], meta.rmW, meta.rmH,
                            color,
                            x * (meta.rmW-1.0) / (meta.lmW-1),
                            y * (meta.rmH-1.0) / (meta.lmH-1) );
                }   }
            }
            fprintf(stderr, "\n");
        }

        fprintf(stderr, "Accumulating and normalizing...\n");
        float min = 1e9, max = 1e-9, avg=0, sum = 0;
        size_t avgcount=0;
        for(unsigned wallno=0; wallno<nwalls; ++wallno)
        {
            std::vector<float>& map = walls[wallno].new_lmap;
            std::vector<float>& map2 = walls[wallno].total_lmap;
            for(size_t a=0; a<map.size(); ++a)
            {
                map2[a] += map[a];
                if(map2[a] < min) min = map2[a];
                if(map2[a] > max) max = map2[a];
                avg += map2[a];
                sum += map[a];
            }
            avgcount += map.size();
            walls[wallno].last_lmap.swap( walls[wallno].new_lmap );
        }
        avg /= avgcount;
        fprintf(stderr, "Saving new lightmaps... Sum of change this round %.4f, min=%.4f,avg=%.4f,max=%.4f\n",
            sum,min,avg,max);
        // Install the newly calculated lightmaps
        for(unsigned wallno=0; wallno<nwalls; ++wallno)
        {
            std::vector<float> out( walls[wallno].total_lmap );
            for(size_t a=0; a<out.size(); ++a)
            {
                out[a] =
                    (((out[a] - min) / (std::min(1.5f,avg) - min))
                     * ( 3.4 * 254.0/255) + 1/255.0);
            }

            char Buf[64]; std::sprintf(Buf, "rmap%u.raw", wallno);
            FILE* fp = std::fopen(Buf, "wb");
            if(!fp) std::perror(Buf);
            std::fwrite(&out[0], out.size(), sizeof(float), fp);
            std::fclose(fp);

            SaveMap( wallno, out );
        }
        if(sum < 1.0) break;
    }
}

int main(int argc, char** argv)
{
    for(unsigned y=0; y<txH; ++y)
        for(unsigned x=0; x<txW; ++x)
            texture[y*txW+x] =
             0.7 - ( (1.0-std::sqrt( int(x-txW/2)*int(x-txW/2)/double(txW/2)/(txW/2)
                                   + int(y-txH/2)*int(y-txH/2)/double(txH/2)/(txH/2))) *0.6
                    -!(x<8 || y<8 || (x+8)>=txW || (y+8)>=txH))
                 * (0.1 + 0.3*std::pow((std::rand()%100)/100.0, 2.0));
             ;

    MakeLightMaps(argc == 2);
}
