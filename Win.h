
//{{BLOCK(Win)

//======================================================================
//
//	Win, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 560 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 17920 + 2048 = 20480
//
//	Time-stamp: 2017-12-05, 15:41:28
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WIN_H
#define GRIT_WIN_H

#define WinTilesLen 17920
extern const unsigned short WinTiles[8960];

#define WinMapLen 2048
extern const unsigned short WinMap[1024];

#define WinPalLen 512
extern const unsigned short WinPal[256];

#endif // GRIT_WIN_H

//}}BLOCK(Win)
