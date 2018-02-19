
//{{BLOCK(Lose)

//======================================================================
//
//	Lose, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 191 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 6112 + 2048 = 8672
//
//	Time-stamp: 2017-12-05, 17:02:29
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_LOSE_H
#define GRIT_LOSE_H

#define LoseTilesLen 6112
extern const unsigned short LoseTiles[3056];

#define LoseMapLen 2048
extern const unsigned short LoseMap[1024];

#define LosePalLen 512
extern const unsigned short LosePal[256];

#endif // GRIT_LOSE_H

//}}BLOCK(Lose)
