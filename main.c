// "I died on a full stomach" is a platformer where you play as a ghost to get
// to the light. It has 2 levels that are filled with enemies. There are bonus
// toilet papers that you may get in each level. The last level has a boss who
// you will have to defeat in order to get to the winning screen. You can kill
// enemies by flying (with limited flying power) and pooping on them.
//
// One bug I could find in my game is the collisionmap for very specific
// areas of my level. There's one in the first level where there's a hole. If
// you try to go right onto the top platform, there's a chance that you can't
// move. Another is whenever the music finishes, a fart sound occurs.
//
// I drew everything in this game by hand, except for the splasharts, and I'm
// not an artist so I'm pretty proud of myself for that. I also created the
// enemy and boss AI in lines 613-1036 of game.c.


#include <stdlib.h>
#include <stdio.h>
#include "myLib.h"
#include "text.h"
#include "cutscene.h"
#include "game.h"
#include "Pause.h"
#include "spritesheet.h"
#include "gameBG0.h"
#include "GameBG0Behind.h"
#include "gameBG2.h"
#include "titleScreen.h"
#include "spritesheet2.h"
#include "Instructions.h"
#include "Win.h"
#include "BGaudio.h"
#include "Lose.h"

void initialize();
void goToStart();
void start();
void goToCutscene();
void cutscene();
void goToInstructions();
void instructions();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

enum {START, CUTSCENE, INSTRUCTIONS, GAME, PAUSE, WIN, LOSE};
int state;
int pauseState;
int titleState;
int level;
int cheat;
int livesRemaining;

int hOff;
int vOff;

unsigned short buttons;
unsigned short oldButtons;

OBJ_ATTR shadowOAM[128];

char buffer[41];

int main() {
    initialize();
    setupSounds();
    setupInterrupts();

    playSoundA(BGaudio, BGAUDIOLEN, BGAUDIOFREQ, 1);

    while(1) {
        oldButtons = buttons;
        buttons = BUTTONS;

        switch(state) {
            case START:
                start();
                break;
            case CUTSCENE:
                cutscene();
                break;
            case INSTRUCTIONS:
                instructions();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
        }
    }
}

void initialize() {
    goToStart();
}

void goToStart() {
    waitForVBlank();

    loadPalette(titleScreenPal);
    DMANow(3, titleScreenTiles, &CHARBLOCK[1], titleScreenTilesLen / 2);
    DMANow(3, titleScreenMap, &SCREENBLOCK[29], titleScreenMapLen / 2);

    DMANow(3, spritesheet2Pal, SPRITEPALETTE, 256);
    DMANow(3, spritesheet2Tiles, &CHARBLOCK[4], spritesheet2TilesLen);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29);

    shadowOAM[1].attr0 = 110 | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[1].attr1 = 80 | ATTR1_SMALL;
    shadowOAM[1].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(1, 0);
    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = START;
}

void start() {
    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_DOWN) && titleState != 1) {
        pauseState = 1;
        shadowOAM[1].attr0 += 12;
        shadowOAM[1].attr1 -= 20;
        titleState++;
        DMANow(3, shadowOAM, OAM, 128 * 4);
    }
    if (BUTTON_PRESSED(BUTTON_UP) && titleState != 0) {
        pauseState = 0;
        shadowOAM[1].attr0 -= 12;
        shadowOAM[1].attr1 += 20;
        titleState--;
        DMANow(3, shadowOAM, OAM, 128 * 4);
    }

    if (BUTTON_PRESSED(BUTTON_START)) {
        if (titleState == 0) {
            goToCutscene();
            initCutscene();
        } else if (titleState == 1) {
            goToInstructions();
        }
    }
}

void goToCutscene() {

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = CUTSCENE;
}

void cutscene() {
    waitForVBlank();

    drawCutscene();

    if (textSeed == 9) {
        goToGame();
        initGame();
    }
}

void goToInstructions() {
    waitForVBlank();

    loadPalette(InstructionsPal);
    DMANow(3, InstructionsTiles, &CHARBLOCK[1], InstructionsTilesLen / 2);
    DMANow(3, InstructionsMap, &SCREENBLOCK[29], InstructionsMapLen / 2);

    REG_DISPCTL = MODE0 | BG0_ENABLE;
    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = INSTRUCTIONS;
}

void instructions() {
    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START)) {
        titleState = 0;
        goToStart();
    }
}

void goToGame() {
    waitForVBlank();

    loadPalette(GameBG0BehindPal);

    if (level == 0) {
        DMANow(3, GameBG0Tiles, &CHARBLOCK[1], GameBG0TilesLen / 2);
        DMANow(3, GameBG0Map, &SCREENBLOCK[29], GameBG0MapLen / 2);
    } else if (level == 1) {
        DMANow(3, GameBG2Tiles, &CHARBLOCK[1], GameBG2TilesLen / 2);
        DMANow(3, GameBG2Map, &SCREENBLOCK[29], GameBG2MapLen / 2);
    }

    DMANow(3, GameBG0BehindTiles, &CHARBLOCK[0], GameBG0BehindTilesLen / 2);
    DMANow(3, GameBG0BehindMap, &SCREENBLOCK[31], GameBG0BehindMapLen / 2);

    DMANow(3, spritesheetPal, SPRITEPALETTE, 256);
    DMANow(3, spritesheetTiles, &CHARBLOCK[4], spritesheetTilesLen);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_DISPCTL = MODE0 | BG0_ENABLE | BG1_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_SIZE_WIDE | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29);
    REG_BG1CNT = BG_SIZE_SMALL | BG_CHARBLOCK(0) | BG_SCREENBLOCK(31);

    state = GAME;
}

void game() {
    updateGame();
    waitForVBlank();
    drawGame();

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    } else if (livesRemaining == 0) {
        goToLose();
    } else if (level == 2) {
        goToWin();
    }
}

void goToPause() {
    waitForVBlank();

    loadPalette(PausePal);
    DMANow(3, PauseTiles, &CHARBLOCK[1], PauseTilesLen / 2);
    DMANow(3, PauseMap, &SCREENBLOCK[29], PauseMapLen / 2);

    DMANow(3, spritesheet2Pal, SPRITEPALETTE, 256);
    DMANow(3, spritesheet2Tiles, &CHARBLOCK[4], spritesheet2TilesLen);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29);

    shadowOAM[1].attr0 = 51 | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[1].attr1 = 74 | ATTR1_SMALL;
    shadowOAM[1].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 0);
    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = PAUSE;
}

void pause() {
    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_DOWN) && pauseState != 2) {
        pauseState++;
        shadowOAM[1].attr0 += 15;
        DMANow(3, shadowOAM, OAM, 128 * 4);
    }
    if (BUTTON_PRESSED(BUTTON_UP) && pauseState != 0) {
        pauseState--;
        shadowOAM[1].attr0 -= 15;
        DMANow(3, shadowOAM, OAM, 128 * 4);
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        if (pauseState == 0) {
            goToGame();
        } else if (pauseState == 1) {
            if (cheat) {
                cheat = 0;
            } else {
                cheat = 1;
            }
        } else if (pauseState == 2) {
            pauseState = 0;
            shadowOAM[1].attr0 = 51;
            textSeed = 0;
            level = 0;
            firstSwitch = 0;
            cheat = 0;
            player.worldRow = 111;
            player.worldCol = 20;
            hOff = 0;
            vOff = 0;
            boss.active = 0;
            player.initBoss = 0;
            bosslives = 5;
            bHealth.active = 0;

            for (int i = 0; i < BARLENGTH; i++) {
                bar[i].active = 0;
            }
            goToStart();
        }
    }
}

void goToWin() {
    waitForVBlank();

    loadPalette(WinPal);
    DMANow(3, WinTiles, &CHARBLOCK[1], WinTilesLen/2);
    DMANow(3, WinMap, &SCREENBLOCK[29], WinMapLen/2);

    REG_DISPCTL = MODE0 | BG0_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = WIN;
}

void win() {
    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseState = 0;
        shadowOAM[1].attr0 = 51;
        textSeed = 0;
        level = 0;
        cheat = 0;
        player.worldRow = 111;
        player.worldCol = 20;
        hOff = 0;
        vOff = 0;
        firstSwitch = 0;
        goToStart();
    }
}

void goToLose() {
    waitForVBlank();

    loadPalette(LosePal);
    DMANow(3, LoseTiles, &CHARBLOCK[1], LoseTilesLen/2);
    DMANow(3, LoseMap, &SCREENBLOCK[29], LoseMapLen/2);

    REG_DISPCTL = MODE0 | BG0_ENABLE;
    REG_BG0CNT = BG_SIZE_SMALL | BG_CHARBLOCK(1) | BG_SCREENBLOCK(29);

    REG_BG0HOFF = 0;
    REG_BG0VOFF = 0;

    state = LOSE;
}

void lose() {
    waitForVBlank();

    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseState = 0;
        shadowOAM[1].attr0 = 51;
        textSeed = 0;
        level = 0;
        cheat = 0;
        player.worldRow = 111;
        player.worldCol = 20;
        hOff = 0;
        vOff = 0;
        firstSwitch = 0;
        goToStart();
    }
}

























