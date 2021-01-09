/* Copyright (C) 2000 DJ Delorie, see COPYING.DJ for details */
#ifndef __dj_include_libc_features_h__
#define __dj_include_libc_features_h__

#ifdef __cplusplus
extern "C" {
#endif

#if __STDC_VERSION__ >= 199901
#elif __GNUC__ >= 2 && __GNUC_MINOR__ >= 91
#define restrict __restrict__
#else
#define restrict
#endif


#ifdef __cplusplus
}
#endif

#endif /* __dj_include_libc_features_h__ */