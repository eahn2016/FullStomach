
//{{BLOCK(GameBG2)

//======================================================================
//
//	GameBG2, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 159 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 5088 + 4096 = 9696
//
//	Time-stamp: 2017-12-04, 16:13:15
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMEBG2_H
#define GRIT_GAMEBG2_H

#define GameBG2TilesLen 5088
extern const unsigned short GameBG2Tiles[2544];

#define GameBG2MapLen 4096
extern const unsigned short GameBG2Map[2048];

#define GameBG2PalLen 512
extern const unsigned short GameBG2Pal[256];

#endif // GRIT_GAMEBG2_H

//}}BLOCK(GameBG2)
