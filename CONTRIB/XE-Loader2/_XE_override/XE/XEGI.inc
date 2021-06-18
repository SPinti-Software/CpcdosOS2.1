extern long		cpc_Creer_Contexte			(long TAILLEX, long TAILLEYn);
extern void*	cpc_Obtenir_Zone_Contexte	(long ID);
extern long		cpc_Blitter					(long ID);
	

uint32_t Create_context(ContextInf _ctx){
	aContext_count++; //Important: Skip the zero index (NULL)
	int idx = aContext_count;
	
	aContext[idx] = _ctx;
	
	aContext[idx].idx = idx;
	//aContext[idx].width = nWidth;
	//aContext[idx].height = nHeight;
	
	if(aContext[idx].width > 10){
		// Get ID context from cpcdos
		aContext[idx].id_context = cpc_Creer_Contexte((long) aContext[idx].width, (long)aContext[idx].height);
		showinf("Create_Context()= idx: %d, height: %d, width: %d", idx,  aContext[idx].height,  aContext[idx].width);
	}

	showinf("PixView= idx: %d, height: %d, width: %d", idx,  aContext[idx].height,  aContext[idx].width);
	showinf("create hwnd_View( hwnd_View: %d, idx: %d, height: %d, width: %d )", aContext[idx].hwnd_View,  idx,  aContext[idx].height,  aContext[idx].width );
	return (uint32_t)idx;
}

ContextInf* Blit_context(uint32_t _idx, const void* _pixels, int _SrcWidth){ //TODO more flexible param
	
	_printl("!Blit_context ");
	if(aContext[_idx].width > 10){
		aContext[_idx].pixels = cpc_Obtenir_Zone_Contexte((long) aContext[1].id_context);

		uint32_t* pix_src = (uint32_t*)_pixels;
		uint32_t* pix_dest = (uint32_t*)aContext[_idx].pixels;
		
		for(int y = 0; y <  aContext[_idx].height; y++){
			memcpy(pix_dest + (y * aContext[_idx].width), pix_src + (y * _SrcWidth), aContext[_idx].width *4);
		}

		_printl("!Blit_context CPC");

		cpc_Blitter((long) aContext[1].id_context);
	}	

	return &aContext[_idx]; //number of scan lines copied
}


uint32_t Sys_ProcessMsg(XEGI_SysMsg _msg){
	switch (_msg.type.val)
	{
	_case XEGI_Msg_LBUTTONDOWN:
	{
		
	}
	_case XEGI_Msg_LBUTTONUP:
	{
		
	}
	}
	return 0;
}

