// Vector mathematics
template<typename T>
struct XYZ
{
    T d[3];
    template<typename K> static K GetN(const XYZ<K>& b,unsigned n) { return b.d[n]; }
    template<typename K> static K GetN(const K&      b,unsigned)   { return b; }
    #define do_op(o) \
        template<typename K> XYZ<T>& operator o##= (const K& b) \
            { for(unsigned n=0; n<3; ++n) d[n] o##= GetN(b,n); return *this; } \
        template<typename K> XYZ<T> operator o (const K& b) const \
            { XYZ<T> tmp(*this); tmp o##= b; return tmp; }
    do_op(*)
    do_op(+)
    do_op(-)
    do_op(/)
    #undef do_op
    template<typename K> operator XYZ<K> () const
    	{ return XYZ<K> {{ (K) d[0], (K) d[1], (K) d[2] }}; }
    template<typename K> bool operator==( const XYZ<K>& b) const
    	{ return d[0]==b.d[0] && d[1]==b.d[1] && d[2]==b.d[2]; }
    template<typename K> inline T Dot(const K& b) const
    	{ auto s=(*this * b); return s.d[0]+s.d[1]+s.d[2]; }

    template<typename K>
    XYZ<T> Cross(const XYZ<K>& b) const
    {
        return {{d[1]*b.d[2] - d[2]*b.d[1],
                 d[2]*b.d[0] - d[0]*b.d[2],
                 d[0]*b.d[1] - d[1]*b.d[0]}};
    }

    inline T Squared() const         { return Dot(*this); }
    inline T Len() const             { return std::sqrt(Squared()); }
    inline XYZ<T> Normalized() const { return *this * (T(1) / Len()); }
};

template<typename T>
struct Matrix
{
    XYZ<T> m[3], offset;
    void Reset() { offset = {{0,0,0}}; m[0]=m[1]=m[2]=offset; }
    Matrix() { Reset(); }
    template<typename K>
    void InitRotate(const XYZ<K>& ang)
    {
        auto Cx=std::cos(ang.d[0]), Cy=std::cos(ang.d[1]), Cz=std::cos(ang.d[2]);
        auto Sx=std::sin(ang.d[0]), Sy=std::sin(ang.d[1]), Sz=std::sin(ang.d[2]);
        m[0] = {{ Cy*Cz, Cy*Sz, -Sy }};
        m[1] = {{ Sx*Cz*Sy - Cx*Sz, Sx*Sz*Sy + Cx*Cz, Sx*Cy }};
        m[2] = {{ Cx*Cz*Sy + Sx*Sz, Cx*Sz*Sy - Sx*Cz, Cx*Cy }};
    }
    template<typename K>
    void InitAxisRotate(const XYZ<K>& V, const T& ang)
    {
        auto C = std::cos(ang), S = std::sin(ang);
        auto xyC = V.d[0]*V.d[1] * (1.0-C), xS = V.d[0]*S, x2 = V.d[0]*V.d[0];
        auto xzC = V.d[0]*V.d[2] * (1.0-C), yS = V.d[1]*S, y2 = V.d[1]*V.d[1];
        auto yzC = V.d[1]*V.d[2] * (1.0-C), zS = V.d[2]*S, z2 = V.d[2]*V.d[2];
        m[0].d[1]=xyC + zS; m[0].d[2]=xzC - yS; m[0].d[0]=x2 + C * (1.0 - x2);
        m[1].d[0]=xyC - zS; m[1].d[2]=yzC + xS; m[1].d[1]=y2 + C * (1.0 - y2);
        m[2].d[0]=xzC + yS; m[2].d[1]=yzC - xS; m[2].d[2]=z2 + C * (1.0 - z2);
    }
    template<typename K>
    void Transform(XYZ<K>& v)
    {
        v = offset + XYZ<T> {{ m[0].Dot(v), m[1].Dot(v), m[2].Dot(v) }};
    }
};

// Quadrilateral-spheresweep intersection test, adapted from a paper
// "Improved Collision detection and Response" by Kasper Fauerby (2003).
// The original paper handled triangles rather than quadrilaterals.
template<typename T, typename M>
bool CollideAndSlide(XYZ<T>& pos, const XYZ<T>& vel, const XYZ<T>& eRadius, const M& map)
{
    // Transform all coordinates such that the player can be considered an unit sphere.
    XYZ<T> epos( pos / eRadius ), evel( vel / eRadius );
    // Iterate until we have our final position.
    bool collided = false;
    for(int limit=5; limit>0; --limit)
    {
        const T veryCloseDistance = T( 5e-05 );

        struct CollisionResult
        {
            bool   found;
            T      distance;
            XYZ<T> where;
        } result = {false,T(),XYZ<T>()};

        // This function checks whether an unit-sphere moving from point towards point+dir
        // collides with the given quadrilateral, and determines where the collision happens.
        auto CheckWall = [&result](const XYZ<T>& point, const XYZ<T>& dir, decltype(*map)& m)
        {
            if (m.normal.Dot(dir) > 0) return; // Reject back-facing triangles

            auto GetLowestRoot = [](T a, T b, T c, T maxR) -> std::pair<bool,T>
            {
                T determinant(b*b - T(4)*a*c); // Solve quadratic equation
                if(determinant >= T(0))
                {
                    // Calculate two roots
                    T sd( std::sqrt(determinant) );
                    T r1(( sd-b)/(a+a));
                    T r2((-sd-b)/(a+a));
                    // Ensure that r1 is the smallest non-negative result
                    if(r1 > r2) { T tmp(r2); r2=r1; r1=tmp; }
                    if(r1 > T(0) && r1 < maxR) return {true,r1};
                    if(r2 > T(0) && r2 < maxR) return {true,r2};
                }
                return {false,T()};
            };
            auto PointInRectangle = [](
                const XYZ<T>& point,
                const XYZ<T>& pa, const XYZ<T>& pb, const XYZ<T>& pc, const XYZ<T>& pd) -> bool
            {
                // Check triangle <pa,pb,pc> and then <pa,pc,pd>
                auto e10(pb-pa), e20(pc-pa), vp(point - pa);
                auto a(e10.Dot(e10)), b(e10.Dot(e20)), c(e20.Dot(e20));
                auto d(vp.Dot(e10)), e(vp.Dot(e20)); auto &A = c, &D = e;
               {auto x(d*c-e*b);       if(x < 0) goto nope1;
                auto y(e*a-d*b);       if(y < 0) goto nope1;
                auto z(x+y-(a*c-b*b)); if(z < 0) return true;}
            nope1:;
                auto e30(pd-pa);
                auto B(e20.Dot(e30)), C(e30.Dot(e30)), E(vp.Dot(e30));
               {auto x(D*C-E*B);       if(x < 0) goto nope2;
                auto y(E*A-D*B);       if(y < 0) goto nope2;
                auto z(x+y-(A*C-B*B)); if(z < 0) return true;}
            nope2: return false;
            };

            CollisionResult best = { false, T(1), XYZ<T>() } ;

            // Get interval of plane intersection:
            T t0, t1;
            T planeDistance(point.Dot(m.normal) - m.normal.Dot(m.p[0]));
            T normalDotVelocity(m.normal.Dot(dir));
            bool embeddedInPlane = normalDotVelocity == T(0); // sphere is travelling parallel to the plane
            if (embeddedInPlane) // if sphere is travelling parallel to the plane
            {
                if (std::abs(planeDistance) >= T(1)) return; // too far
                // Sphere intersects in the whole range [0..1]
                t0 = T(0);
                t1 = T(1);
            }
            else
            {
                // N dot D is not 0. Calculate intersection interval:
                t0 = (T(-1) - planeDistance) / normalDotVelocity;
                t1 = (T( 1) - planeDistance) / normalDotVelocity;
                if (t0 > t1) { T tmp(t1); t1=t0; t0=tmp; } // Ensure t0 < t1
                // Check that at least one result is within range:
                if (t0 > T(1) || t1 < T(0)) return; // Both values are outside range [0,1].
                // Clamp to [0,1]
                t0 = std::max(T(0), std::min(T(1), t0));
                t1 = std::max(T(0), std::min(T(1), t1));
            }
            // OK, at this point we have two time values t0 and t1 between which the
            // swept sphere intersects with the surface. If any collision is to occur,
            // it must happen within this interval.
            // First we check for the easy case - collision inside the surface. If
            // this happens, it must be at time t0, as this is when the sphere rests
            // on the front side of the surface plane. Note, this can only happen if
            // the sphere is not embedded in the surface plane.
            if (!embeddedInPlane)
            {
                auto p(point - m.normal + dir * t0); // Plane intersection point
                if (PointInRectangle(p, m.p[0],m.p[1],m.p[2],m.p[3])) { best = {true,t0,p}; goto done; }
            }
            // If we haven't found a collision already, we'll have to
            // sweep the sphere against points and edges of the surface.
            // Note: A collision inside the surface (the check above) will
            //       always happen before a vertex or edge collision!
            // This is why we can skip the swept test if the above gives a collision!
           {T velSq(dir.Squared());
            // For each vertex or edge a quadratic equation have to be solved.
            // We parameterize this equation as a*t^2 + b*t + c = 0, and below
            // we calculate the parameters a,b and c for each test.
            for(unsigned n=0; n<4; ++n) // Each vertex
            {
                T b( dir.Dot(point - m.p[n]) ); b += b;
                T c( (m.p[n] - point).Squared() - T(1) );
                std::pair<bool,T> r( GetLowestRoot(velSq,b,c, best.distance) );
                if(r.first) best = {true,r.second,m.p[n]};
            }
            for(unsigned e=0; e<4; ++e) // Each edge
            {
                auto edge(m.p[(e+1)%4] - m.p[e]), BV(m.p[e] - point);
                T edgeSq = edge.Squared(), edgeDV = edge.Dot(dir), edgeDBV = edge.Dot(BV);
                T a( edgeDV * edgeDV - edgeSq * velSq );
                T b( edgeSq * dir.Dot(BV) - edgeDV * edgeDBV ); b += b;
                T c( edgeSq - edgeSq * BV.Squared() + edgeDBV * edgeDBV );
                /* Does the swept sphere collide against infinite edge? */
                std::pair<bool,T> r( GetLowestRoot(a,b,c, best.distance) );
                if(r.first)
                {
                    /* Check if intersection is within line segment: */
                    T f( (edgeDV * r.second - edgeDBV) / edgeSq );
                    if (f >= T(0) && f <= T(1)) best = {true,r.second,m.p[e] + edge * f};
                }
            }}
        done:if(best.found)
            {
                T distance( best.distance * dir.Len() ); // convert "when" into "distance"
                if(!result.found || distance < result.distance) // Keep closest hit
                    result = {true, distance, best.where};
            }
        };

        for(const auto& wall: map) // Check if something blocks the way
        {
            auto m(wall);
            for(unsigned a=0; a<4; ++a) m.p[a] /= eRadius;
            CheckWall(epos, evel, m);
        }

        // If no collision, we just move along the velocity
        if(!result.found) { epos += evel; break; }
        collided = true;
        // Unless we are already very close, move the player
        // right next to the wall but not exactly into it.
        if (result.distance >= veryCloseDistance)
        {
            auto evel_norm ( evel.Normalized() );
            epos         += evel_norm * (result.distance - veryCloseDistance);
            result.where -= evel_norm * veryCloseDistance;
        }
        // Determine the sliding plane
        XYZ<T> spNormal ( (epos - result.where).Normalized() );
        // Determine the desired and accomplished target positions
        XYZ<T> dp    ( epos + evel );
        XYZ<T> newdp ( dp - spNormal * (dp.Dot(spNormal) - spNormal.Dot(result.where)) );
        // Set new velocity vector
        evel = newdp - result.where;
        // Iterate more unless the new velocity is very small
        if (evel.Squared() < veryCloseDistance*veryCloseDistance) break;
    }
    pos = epos * eRadius;
    return collided;
}


// Ray-quadrilateral intersection test, adapted from a paper
// "An Efficient Ray-Quadrilateral Intersection Test"
// by Ares Lagae and Philip Dutré (2005).
// Because our walls are simple rectangles, the calculation of
// alpha11 and beta11 (both of which are always 1.0) was skipped,
// and many extra branches were eliminated, simpifying the code.
// Our walls are also perpendicular to main axis, but it is a coincidence.
struct HitRec
{
    unsigned wallno;
    float    distance, alpha, beta;
    XYZ<float> hit;
    HitRec() : wallno(~0u), distance(0), hit() { }
    bool set() const { return wallno != ~0u; }
};
template<typename T, typename K, typename M>
HitRec IntersectRay(const XYZ<T>& org, const XYZ<K>& dir, const M& map)
{
    HitRec result;

    unsigned wallno = (unsigned)-1;
    for(const auto& m : map)
    {
    	++wallno;

        const T eps = T(1e-9);
        #define halftest(A,B,C) \
            auto e##A##B = m.p[B] - m.p[A]; \
            auto e##A##C = m.p[C] - m.p[A]; \
            auto vp      = dir.Cross(e##A##C); \
            auto det     = e##A##B.Dot(vp); \
            if(std::abs(det) < eps) continue; \
            auto vt      = org - m.p[A]; \
            auto inv_det = 1. / det; \
            auto alpha   = vt.Dot(vp) * inv_det; \
            if(alpha < 0.) continue; \
            auto vq      = vt.Cross(e##A##B); \
            auto beta    = dir.Dot(vq) * inv_det; \
            if(beta < 0.) continue

        halftest(0,1,3);

        if( (alpha + beta) > 1.) { halftest(2,3,1); }

        // Compute the ray parameter of the intersection point, and
        // reject the ray if it does not hit m. Choose nearest hit.
        T t = e03.Dot(vq) * inv_det;
        if(t >= 0. && (!result.set() || t < result.distance))
        {
            result.wallno   = wallno;
            result.distance = t;
            result.alpha    = alpha;
            result.beta     = beta;
            //result.hit      = m.p[0] + e01*alpha + e03*beta;
        }
    }
    if(result.set()) result.hit = org + dir * result.distance;
    return result;
}
