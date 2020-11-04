/* Entete dos_goal.cpp */
// extern "C" void CPC_Blitter();
// extern "C" void* CPC_GetPTR();

extern "C" void printfb(char* texte);

namespace mesa_3d
{
	
	//const unsigned W = 848, H = 480, mode = 0x225; // resolution & BIOS mode#
    // const unsigned W = 320, H = 200, mode = 0x10F; // resolution & BIOS mode#
    // const unsigned W=424, H=W*9/16, mode=0xFFF;
	unsigned W = 320, H = 200;

	
	const unsigned DitheringBits = 6;
	const unsigned R = 7, G = 9, B = 4; // 7*9*4 regular palette (252 colors)
	const double PaletteGamma = 1.5;            // Apply this gamma to palette
	const double DitherGamma = 2.0/PaletteGamma;// Apply this gamma to dithering
	const bool TemporalDithering = true;
	const unsigned nwalls = sizeof(map)/sizeof(*map);
	
	class cpc_mesatest
	{
		public:
		unsigned char ColorConvert[3][256][256], Dither8x8[8][8];
		unsigned Pal[R*G*B];
		int mesatest_main(unsigned int *Buffer);
		unsigned int *ImageBuffer;
		// unsigned int *ImageBuffer;
		int selector;

		bool TexturesInstalled = false;
		GLuint WallTextureID;
		bool UseAddmap[nwalls] = {false};
		bool UseDecals[nwalls] = {false};
		unsigned LightmapIDs[nwalls] = { 0 };
		unsigned AddmapIDs[nwalls]   = { 0 };
		unsigned DecalIDs[nwalls] = { 0 };
		
		std::vector<float> DecalMaps[nwalls];
		
		void Init();
		int mesatest_main();
		void Render();
		void Close();
		
		void InstallTexture(const void* data,int w,int h, int txno,
                    int type1, int type2, int filter, int wrap);
					
		void ActivateTexture(int layer, int txno, int mode);
		void DisableTexture(int layer);
		bool CreatePaintBlotch(const HitRec& where);
		void ExtractLevelMap();
		cpc_mesatest();
		~cpc_mesatest();
					
	};
}