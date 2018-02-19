
//{{BLOCK(titleScreen)

//======================================================================
//
//	titleScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 188 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 6016 + 2048 = 8576
//
//	Time-stamp: 2017-12-05, 17:06:03
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TITLESCREEN_H
#define GRIT_TITLESCREEN_H

#define titleScreenTilesLen 6016
extern const unsigned short titleScreenTiles[3008];

#define titleScreenMapLen 2048
extern const unsigned short titleScreenMap[1024];

#define titleScreenPalLen 512
extern const unsigned short titleScreenPal[256];

#endif // GRIT_TITLESCREEN_H

//}}BLOCK(titleScreen)
