#ifndef BSS_EXTRA_H
#define BSS_EXTRA_H

#ifdef __MWERKS__
#pragma section W ".data.extra" ".bss.extra"
#define SECTION_BSS_EXTRA __declspec(section ".data.extra")
#else
#define SECTION_BSS_EXTRA 
#endif

#endif
