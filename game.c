#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "GameBG0CollisionMap.h"
#include "GameBG1CollisionMap.h"
#include "GameBG0Behind.h"
#include "GameBG2.h"
#include "spritesheet.h"
#include "fart.h"
#include <time.h>

PLAYER player;
POOP poops[POOPCOUNT];
ENEMY enemies[ENEMYCOUNT];
PORTAL portal[PORTALCOUNT];
BOSS boss;
SHOOTER shooter;
BULLET bullet;
BOSSBUTTONS bbuttons[BUTTONCOUNT];
THOUGHT thoughts[THOUGHTCOUNT];
ROCK rock;
BAR bar[BARLENGTH];
BOSSHEALTH bHealth;
TP tp;
TPBOT tpBot[TPCOUNT];
CHEATO cheatO;
CHEATWORD cheatWord[CHEATWORDLENGTH];
FLY fly[FLYBARLENGTH];
FLY power;
HEART lives[LIVESREMAINING];

SOUND soundA;
SOUND soundB;

int livesRemaining;
int level;
int firstSwitch;
int cheat;
int bosslives;

int hOff;
int vOff;

//******************************** Game ****************************************

void initGame() {
    initPlayer();
    initEnemy();
    initPoop();
    initPortal();
    initCheatOnOff();
    initCheatWord();
    initFlyBar();
    initFlyPower();
    initLives();
    initTP();
    initTPBot();
    initBoss();
    initShooter();
    initBullet();
    initButtons();
    initThoughts();
    initRock();
    initBar();
    initBossHealth();
    level = 0;
    srand(time(NULL));
    livesRemaining = LIVESREMAINING;
    bosslives = BOSSLIVES;
    REG_BG0VOFF = vOff;
    REG_BG0HOFF = hOff;
    REG_BG1HOFF = hOff;
}

void updateGame() {
    updatePlayer();

    for (int i = 0; i < POOPCOUNT; i++) {
        updatePoop(&poops[i]);
    }

    for (int i = 0; i < PORTALCOUNT; i++) {
        updatePortal(&portal[i]);
    }

    for (int i = 0; i < ENEMYCOUNT; i++) {
        updateEnemy(&enemies[i]);
    }

    updateTP();
    updateTPBot();

    updateBoss();
    updateShooter();
    updateBullet();

    for (int i = 0; i < BUTTONCOUNT; i++) {
        updateButtons(&bbuttons[i]);
    }

    updateThoughts();

    updateRock();

    for (int i = 0; i < BARLENGTH; i++) {
        updateBar(&bar[i]);
    }

    if (bosslives == 0) {
        for (int i = 0; i < BARLENGTH; i++) {
            bar[i].active = 0;
        }
    }

    updateBossHealth();
}

void drawGame() {

    // 2nd level
    if (level == 1 && firstSwitch == 1) {
        loadPalette(GameBG0BehindPal);
        DMANow(3, GameBG2Tiles, &CHARBLOCK[1], GameBG2TilesLen / 2);
        DMANow(3, GameBG2Map, &SCREENBLOCK[29], GameBG2MapLen / 2);

        DMANow(3, GameBG0BehindTiles, &CHARBLOCK[0], GameBG0BehindTilesLen / 2);
        DMANow(3, GameBG0BehindMap, &SCREENBLOCK[31], GameBG0BehindMapLen / 2);

        player.worldCol = 20;
        player.worldRow = 111;

        for (int i = 0; i < 10; i++) {
            enemies[i].active = 0;
        }
        for (int i = 10; i < 13; i++) {
            enemies[i].active = 1;
        }
        enemies[10].worldCol = 125;
        enemies[10].worldRow = 130;
        enemies[11].worldCol = 140;
        enemies[11].worldRow = 130;
        enemies[12].worldCol = 145;
        enemies[12].worldRow = 67;

        tp.worldRow = 5;
        tp.worldCol = 147;
        tp.active = 1;

        shooter.active = 1;

        for (int i = 0; i < BUTTONCOUNT; i++) {
            bbuttons[i].active = 1;
        }

        for (int i = 0; i < BARLENGTH; i++) {
            bar[i].active = 1;
        }

        rock.active = 1;
        bHealth.active = 1;

        vOff = 0;
        hOff = 0;
        REG_BG0VOFF = vOff;
        REG_BG0HOFF = hOff;
        REG_BG1HOFF = hOff;
        firstSwitch = 2;
        DMANow(3, shadowOAM, OAM, 128 * 4);
    }

    drawPlayer();

    for (int i = 0; i < POOPCOUNT; i++) {
        drawPoop(&poops[i]);
    }

    for (int i = 0; i < PORTALCOUNT; i++) {
        drawPortal(&portal[i]);
    }

    for (int i = 0; i < ENEMYCOUNT; i++) {
        drawEnemy(&enemies[i]);
    }

    drawCheatOnOff();

    for (int i = 0; i < CHEATWORDLENGTH; i++) {
        drawCheatWord(&cheatWord[i]);
    }

    for (int i = 0; i < FLYBARLENGTH; i++) {
        drawFlyBar(&fly[i]);
    }

    drawFlyPower();

    for (int i = 0; i < LIVESREMAINING; i++) {
        drawLives(&lives[i]);
    }

    drawTP();

    for (int i = 0; i < TPCOUNT; i++) {
        drawTPBot(&tpBot[i]);
    }

    drawBoss();
    drawShooter();
    drawBullet();

    for (int i = 0; i < BUTTONCOUNT; i++) {
        drawButtons(&bbuttons[i]);
    }

    for (int i = 0; i < THOUGHTCOUNT; i++) {
        drawThoughts(&thoughts[i]);
    }

    drawRock();

    for (int i = 0; i < BARLENGTH; i++) {
        drawBar(&bar[i]);
    }

    drawBossHealth();

    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_BG0HOFF = hOff;
    REG_BG1HOFF = hOff / 2;
    REG_BG0VOFF = vOff;
}

//******************************** Player **************************************

void initPlayer() {
    player.screenRow = 111;
    player.screenCol = 20;
    player.worldRow = 111;
    player.worldCol = 20;
    player.height = 31;
    player.width = 22;
    player.rdel = 1;
    player.cdel = 1;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 4;
    player.aniState = 0;
    player.poopTimer = 30;
    player.flyLimit = 64;
    player.hurtTimer = 0;
    player.hurt = 0;
    player.tpCount = 0;
    player.initBoss = 0;
}

void drawPlayer() {
    shadowOAM[0].attr0 = player.screenRow | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[0].attr1 = player.screenCol | ATTR1_MEDIUM;
    if (!player.hurt) {
        shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.curFrame * 4, player.aniState * 4);
    } else {
        if (player.aniState == 0) {
            shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(16, 4);
        } else {
            shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(4 + (player.curFrame * 4), 8 + (player.aniState * 4));
        }
    }
}

void updatePlayer() {
    if (player.aniState != 0) {
        player.prevAniState = player.aniState;
        player.aniState = 0;
    }

    if (player.aniCounter % 20 == 0) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }

    if (BUTTON_HELD(BUTTON_LEFT)) {
        player.aniState = 2;
        if (level == 0) {
            if (GameBG0CollisionMapBitmap[OFFSET(player.worldRow, player.worldCol - player.cdel, MAPWIDTH)]
                && GameBG0CollisionMapBitmap[OFFSET(player.worldRow + player.height - player.rdel, player.worldCol - player.cdel, MAPWIDTH)]) {
                if (player.screenCol > 240 / 2 - player.width / 2) {
                    player.worldCol--;
                } else if (hOff > 0) {
                    hOff--;
                    player.worldCol--;
                } else if (player.worldCol > 0) {
                    player.worldCol--;
                }
            }
        } else if (level == 1) {
            if (GameBG1CollisionMapBitmap[OFFSET(player.worldRow, player.worldCol - player.cdel, MAPWIDTH)]
                && GameBG1CollisionMapBitmap[OFFSET(player.worldRow + player.height - player.rdel, player.worldCol - player.cdel, MAPWIDTH)]
                && GameBG1CollisionMapBitmap[OFFSET(player.worldRow + 8 - player.rdel, player.worldCol - player.cdel, MAPWIDTH)]
                && GameBG1CollisionMapBitmap[OFFSET(player.worldRow + 16 - player.rdel, player.worldCol - player.cdel, MAPWIDTH)]
                && GameBG1CollisionMapBitmap[OFFSET(player.worldRow + 24 - player.rdel, player.worldCol - player.cdel, MAPWIDTH)]) {
                if (player.screenCol > 240 / 2 - player.width / 2) {
                    player.worldCol--;
                } else if (hOff > 0) {
                    hOff--;
                    player.worldCol--;
                } else if (player.worldCol > 0) {
                    player.worldCol--;
                }
            }
        }
    } else if (BUTTON_HELD(BUTTON_RIGHT)) {
        player.aniState = 1;
        if (level == 0) {
            if (GameBG0CollisionMapBitmap[OFFSET(player.worldRow, player.worldCol + player.width + 1, MAPWIDTH)]
                && GameBG0CollisionMapBitmap[OFFSET(player.worldRow + player.height - player.rdel, player.worldCol + player.width + 1, MAPWIDTH)]) {
                if (player.screenCol < 240 / 2 - player.width / 2) {
                    player.worldCol++;
                } else if (hOff + 240 < MAPWIDTH) {
                    hOff++;
                    player.worldCol++;
                } else if (player.worldCol < 240) {
                    player.worldCol++;
                } else if (player.worldCol < MAPWIDTH && player.screenCol + player.width < 240) {
                    player.worldCol++;
                }
            }
        } else if (level == 1) {
            if (GameBG1CollisionMapBitmap[OFFSET(player.worldRow, player.worldCol + player.width + 1, MAPWIDTH)]
                && GameBG1CollisionMapBitmap[OFFSET(player.worldRow + player.height - player.rdel, player.worldCol + player.width + player.cdel, MAPWIDTH)]
                && GameBG1CollisionMapBitmap[OFFSET(player.worldRow + 8 - player.rdel, player.worldCol + player.width + player.cdel, MAPWIDTH)]
                && GameBG1CollisionMapBitmap[OFFSET(player.worldRow + 16 - player.rdel, player.worldCol + player.width + player.cdel, MAPWIDTH)]
                && GameBG1CollisionMapBitmap[OFFSET(player.worldRow + 24 - player.rdel, player.worldCol + player.width + player.cdel, MAPWIDTH)]) {
                if (!collision(player.worldRow, player.worldCol, player.height, player.width,
                    bar[1].worldRow, bar[1].worldCol, bar[1].height, bar[1].width)) {
                    if (player.screenCol < 240 / 2 - player.width / 2) {
                        player.worldCol++;
                    } else if (hOff + 240 < MAPWIDTH) {
                        hOff++;
                        player.worldCol++;
                    } else if (player.worldCol < 240) {
                        player.worldCol++;
                    } else if (player.worldCol < MAPWIDTH && player.screenCol + player.width < 240) {
                        player.worldCol++;
                    }
                } else if (!bar[1].active) {
                    player.worldCol++;
                }

            }
        }
    }

    if (BUTTON_HELD(BUTTON_DOWN) && cheat && player.worldRow + player.height < 143) {
        if (level == 0) {
            if (GameBG0CollisionMapBitmap[OFFSET(player.worldRow + player.height, player.worldCol, MAPWIDTH)]
                && GameBG0CollisionMapBitmap[OFFSET(player.worldRow + player.height + player.rdel, player.worldCol + player.width - player.cdel, MAPWIDTH)]) {
                player.worldRow += player.rdel;
            }
        } else if (level == 1) {
            if (GameBG1CollisionMapBitmap[OFFSET(player.worldRow + player.height, player.worldCol, MAPWIDTH)]
                && GameBG1CollisionMapBitmap[OFFSET(player.worldRow + player.height + player.rdel, player.worldCol + player.width - player.cdel, MAPWIDTH)]) {
                player.worldRow += player.rdel;
            }
        }
    } else if (BUTTON_HELD(BUTTON_UP) && player.flyLimit > 0 && player.worldRow > 0) {
        if (level == 0) {
            if (GameBG0CollisionMapBitmap[OFFSET(player.worldRow - 1, player.worldCol, MAPWIDTH)]
                && GameBG0CollisionMapBitmap[OFFSET(player.worldRow - player.rdel, player.worldCol + player.width, MAPWIDTH)]) {
                if (cheat) {
                    player.worldRow -= player.rdel;
                } else if (player.hurt) {
                    player.worldRow -= player.rdel;
                    player.flyLimit--;
                } else {
                    player.worldRow -= player.rdel * 2;
                    player.flyLimit--;
                }
            }
        } else if (level == 1) {
            if (GameBG1CollisionMapBitmap[OFFSET(player.worldRow - 1, player.worldCol, MAPWIDTH)]
                && GameBG1CollisionMapBitmap[OFFSET(player.worldRow - player.rdel, player.worldCol + player.width, MAPWIDTH)]) {
                if (cheat) {
                    player.worldRow -= player.rdel;
                } else if (player.hurt) {
                    player.worldRow -= player.rdel;
                    player.flyLimit--;
                } else {
                    player.worldRow -= player.rdel * 2;
                    player.flyLimit--;
                }
            }
        }
    }

    // go to next level
    if (BUTTON_PRESSED(BUTTON_A)
        && (player.screenCol + player.width) <= (portal[level].screenCol + portal[level].width + 10)
        && (player.screenCol >= portal[level].screenCol - 10)
        && (player.screenRow >= 143 - player.height - 10)) {
        level++;
        if (!firstSwitch) {
            firstSwitch = 1;
        }
    // shoot poop
    } else if (BUTTON_PRESSED(BUTTON_A) && player.poopTimer >= 64) {
        playSoundB(fart, FARTLEN, FARTFREQ, 0);
        shootPoop();
        player.poopTimer = 0;
    }

    // fall down
    if (!player.hurt) {
        if (player.screenRow + player.height < 143) {
            if (level == 0) {
                if (GameBG0CollisionMapBitmap[OFFSET(player.worldRow + player.height, player.worldCol, MAPWIDTH)]
                    && GameBG0CollisionMapBitmap[OFFSET(player.worldRow + player.height + player.rdel, player.worldCol + player.width - player.cdel, MAPWIDTH)]) {
                    if (!cheat) {
                        player.worldRow += player.rdel;
                    }
                }
            } else if (level == 1) {
                if (GameBG1CollisionMapBitmap[OFFSET(player.worldRow + player.height, player.worldCol, MAPWIDTH)]
                    && GameBG1CollisionMapBitmap[OFFSET(player.worldRow + player.height + player.rdel, player.worldCol + player.width - player.cdel, MAPWIDTH)]) {
                    if (!cheat) {
                        player.worldRow += player.rdel;
                    }
                }
            }
        }
    }

    if (cheat) {
        player.flyLimit = 64;
    }

    // recharge flying energy
    if (player.flyLimit < 64 && !BUTTON_HELD(BUTTON_UP)) {
        player.flyLimit++;
    }

    // collide with enemy
    if (!player.hurt) {
        for (int i = 0; i < ENEMYCOUNT; i++) {
            if (enemies[i].active) {
                if (collision(player.worldRow, player.worldCol, player.height, player.width,
                    enemies[i].worldRow, enemies[i].worldCol, enemies[i].height, enemies[i].width)) {
                    player.worldRow -= 10;
                    shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(16, 4);
                    player.hurt = 1;
                    for (int i = 0; i < LIVESREMAINING; i++) {
                        if (lives[i].active) {
                            lives[i].active = 0;
                            livesRemaining--;
                            break;
                        }
                    }
                }
            }
        }

        if (bullet.active) {
            if (collision(player.worldRow, player.worldCol, player.height, player.width,
                bullet.worldRow, bullet.worldCol, bullet.height, bullet.width)) {
                player.worldRow -= 10;
                shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(16, 4);
                player.hurt = 1;
                for (int i = 0; i < LIVESREMAINING; i++) {
                    if (lives[i].active) {
                        lives[i].active = 0;
                        livesRemaining--;
                        break;
                    }
                }
            }
        }
    }

    // pick up toilet paper
    if (tp.active) {
        if (collision(player.worldRow, player.worldCol, player.height, player.width,
            tp.worldRow, tp.worldCol, tp.height, tp.width)) {
            player.tpCount++;
            tp.active = 0;
        }
    }

    // immune to damage after getting hurt
    if (player.hurt) {
        player.hurtTimer++;
        if (player.hurtTimer > 60) {
            player.hurt = 0;
            player.hurtTimer = 0;
        }
    }

    if (level == 1 && player.initBoss == 0) {
        boss.active = 1;
        player.initBoss = 1;
    }

    player.screenCol = player.worldCol - hOff;
    player.screenRow = player.worldRow - vOff;

    player.aniCounter++;
    player.poopTimer++;
}

//******************************** Poop ****************************************

void shootPoop() {
    for (int i = 0; i < POOPCOUNT; i++) {
        if (!poops[i].active) {
            poops[i].worldRow = player.worldRow + player.height - 5;
            poops[i].worldCol = player.worldCol + player.width / 2 - 4;
            poops[i].active = 1;
            break;
        }
    }
}

void initPoop() {
    for (int i = 0; i < POOPCOUNT; i++) {
        poops[i].height = 5;
        poops[i].width = 7;
        poops[i].rdel = 2;
        poops[i].active = 0;
        poops[i].index = 2 + i;
    }
}

void updatePoop(POOP* p) {
    if (p->active) {
        if (p->worldRow + 1 <= (143 - 5)) {
            if (level == 0) {
                if (GameBG0CollisionMapBitmap[OFFSET(p->worldRow + p->height, p->worldCol, MAPWIDTH)]
                    && GameBG0CollisionMapBitmap[OFFSET(p->worldRow + p->height, p->worldCol + p->width - 1, MAPWIDTH)]) {
                    p->worldRow += p->rdel;
                } else {
                    p->active = 0;
                }
            } else if (level == 1) {
                if (GameBG1CollisionMapBitmap[OFFSET(p->worldRow + p->height, p->worldCol, MAPWIDTH)]
                    && GameBG1CollisionMapBitmap[OFFSET(p->worldRow + p->height, p->worldCol + p->width - 1, MAPWIDTH)]) {
                    p->worldRow += p->rdel;
                } else {
                    p->active = 0;
                }
            }
        } else {
            p->active = 0;
        }
    }
    p->screenCol = p->worldCol - hOff;
    p->screenRow = p->worldRow - vOff;
}

void drawPoop(POOP* p) {
    if (p->active) {
        shadowOAM[p->index].attr0 = p->screenRow | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[p->index].attr1 = p->screenCol | ATTR1_TINY;
        shadowOAM[p->index].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(0, 12);
    } else {
        shadowOAM[p->index].attr0 = ATTR0_HIDE;
    }
}

//******************************** Portal **************************************

void initPortal() {
    for (int i = 0; i < PORTALCOUNT; i++) {
        portal[i].worldRow = 143 - 31;
        portal[i].height = 32;
        portal[i].width = 32;
        portal[i].index = 2 + POOPCOUNT + i;
        portal[i].aniCounter = 0;
        portal[i].curFrame = 0;
        portal[i].numFrames = 4;
        if (level == 0) {
            portal[0].active = 1;
            portal[1].active = 0;
            portal[0].worldCol = 309;
        }
    }
}

void updatePortal(PORTAL* p) {
    if (level == 1) {
        portal[1].active = 1;
        portal[0].active = 0;
        portal[1].worldCol = MAPWIDTH - 24;
    }
    if (p->active) {
        if (p->aniCounter % 20 == 0) {
            p->curFrame = (p->curFrame + 1) % p->numFrames;
        }
    }
    p->aniCounter++;

    p->screenCol = p->worldCol - hOff;
    p->screenRow = p->worldRow - vOff;
}

void drawPortal(PORTAL* p) {
    if (p->active) {
        shadowOAM[p->index].attr0 = p->screenRow | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[p->index].attr1 = p->screenCol | ATTR1_MEDIUM;
        shadowOAM[p->index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(16 + (p->curFrame * 4), 0);
    } else {
        shadowOAM[p->index].attr0 = ATTR0_HIDE;
    }
}

//******************************** Enemy ***************************************

void initEnemy() {
    for (int i = 0; i < ENEMYCOUNT; i++) {
        enemies[i].height = 13;
        enemies[i].width = 15;
        enemies[0].worldCol = 105;
        enemies[1].worldCol = 206;
        enemies[2].worldCol = 215;
        enemies[3].worldCol = 240;
        enemies[4].worldCol = 250;
        enemies[5].worldCol = 260;
        enemies[6].worldCol = 350;
        enemies[7].worldCol = 370;
        enemies[8].worldCol = 385;
        enemies[9].worldCol = 416;
        enemies[10].worldCol = 350;
        enemies[11].worldCol = 370;
        enemies[12].worldCol = 390;
        for (int i = 0; i < 10; i++) {
            enemies[i].worldRow = 130;
        }
        for (int i = 10; i < 13; i++) {
            enemies[i].worldRow = 50;
        }
        enemies[i].active = 1;
        enemies[i].cdel = 1;
        enemies[i].frame = 0;
        enemies[i].state = rand() % 3;
        enemies[i].aniCounter = 0;
        enemies[i].index = 2 + POOPCOUNT + PORTALCOUNT + i;
        enemies[i].moveCounter = 0;
    }
}

void updateEnemy(ENEMY* e) {

    if (e->active) {
        if (e->aniCounter % 40 < 20) {
            e->frame = 0;
        } else {
            e->frame = 1;
        }

        // movement
        if (e->moveCounter % 2 == 0) {
            if (e->state == 0) {
                if (e->moveCounter % 10 < 3) {
                    if (e->aniCounter % 100 < 20) {
                        e->state = 1;
                    } else if (e->aniCounter % 100 > 20 && e->aniCounter % 100 < 40) {
                        e->state = 2;
                    }
                }
            } else if (e->state == 1) {
                if (level == 0) {
                    if (GameBG0CollisionMapBitmap[OFFSET(e->worldRow, e->worldCol + e->width + 1, MAPWIDTH)]
                        && GameBG0CollisionMapBitmap[OFFSET(e->worldRow + e->height - 1, e->worldCol + e->width + e->cdel, MAPWIDTH)]) {
                        if (e->worldRow == 50) {
                            if (e->worldCol == 445) {
                                e->state = 2;
                            } else if (e->worldCol < 446) {
                                e->worldCol += e->cdel;
                            }
                        } else {
                            e->worldCol += e->cdel;
                        }
                        if (e->moveCounter % (20 + (rand() % 40)) == 0) {
                            e->state = 0;
                        }
                    } else {
                        if (rand() % 2 == 0) {
                            e->state = 0;
                        } else {
                            e->state = 2;
                        }
                    }
                } else if (level == 1) {
                    if (GameBG1CollisionMapBitmap[OFFSET(e->worldRow, e->worldCol + e->width + 1, MAPWIDTH)]
                        && GameBG1CollisionMapBitmap[OFFSET(e->worldRow + e->height - 1, e->worldCol + e->width + e->cdel, MAPWIDTH)]) {
                        if (e->worldRow == 67 && e->worldCol < 162) {
                            e->worldCol += e->cdel;
                        } else if (e->worldRow == 130) {
                            e->worldCol += e->cdel;
                        }
                        if (e->moveCounter % (20 + (rand() % 40)) == 0) {
                            e->state = 0;
                        }
                    } else {
                        if (rand() % 2 == 0) {
                            e->state = 0;
                        } else {
                            e->state = 2;
                        }
                    }
                }
            }
            else if (e->state == 2) {
                if (level == 0) {
                    if (GameBG0CollisionMapBitmap[OFFSET(e->worldRow, e->worldCol - e->cdel, MAPWIDTH)]
                        && GameBG0CollisionMapBitmap[OFFSET(e->worldRow + e->height - 1, e->worldCol - e->cdel, MAPWIDTH)]) {
                        if (!(e->worldCol > 309 && e->worldCol < 341)) {
                            e->worldCol -= e->cdel;
                        }
                        if (e->moveCounter % (20 + (rand() % 40)) == 0) {
                            e->state = 0;
                        }
                    } else {
                        e->state = rand() % 2;
                    }
                } else if (level == 1) {
                    if (GameBG1CollisionMapBitmap[OFFSET(e->worldRow, e->worldCol - e->cdel, MAPWIDTH)]
                        && GameBG1CollisionMapBitmap[OFFSET(e->worldRow + e->height - 1, e->worldCol - e->cdel, MAPWIDTH)]) {
                        if (e->worldRow == 67 && e->worldCol > 143) {
                            e->worldCol -= e->cdel;
                        } else if (e->worldRow == 130) {
                            e->worldCol -= e->cdel;
                        }
                        if (e->moveCounter % (20 + (rand() % 40)) == 0) {
                            e->state = 0;
                        }
                    } else {
                        e->state = rand() % 2;
                    }
                }
            }
        }

        // hit by poop
        for (int i = 0; i < POOPCOUNT; i++) {
            if (poops[i].active && collision(e->worldRow, e->worldCol, e->height, e->width,
                poops[i].worldRow, poops[i].worldCol, poops[i].height, poops[i].width)) {
                poops[i].active = 0;
                e->active = 0;
            }
        }
    }
    e->moveCounter++;
    e->aniCounter++;
    e->screenCol = e->worldCol - hOff;
    e->screenRow = e->worldRow - vOff;
}

void drawEnemy(ENEMY* e) {
    if (e->active) {
        shadowOAM[e->index].attr0 = (e->screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[e->index].attr1 = (e->screenCol & COLMASK) | ATTR1_SMALL;
        shadowOAM[e->index].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID((e->frame * 2), 13 + (e->state * 2));
    } else {
        shadowOAM[e->index].attr0 = ATTR0_HIDE;
    }
}

//******************************** Boss ****************************************

void initBoss() {
    boss.worldRow = 69;
    boss.worldCol = 455;
    boss.height = 19;
    boss.width = 17;
    boss.state = 0;
    boss.active = 0;
    boss.frame = 0;
    boss.index = 4 + POOPCOUNT + PORTALCOUNT + TPCOUNT + ENEMYCOUNT + 1;
    boss.numFrames = 2;
    boss.aniCounter = 0;
    boss.color = rand() % 3;
}

void updateBoss() {
    if (boss.active) {
        if (boss.state == 1) {
            if (boss.aniCounter % 25 == 0) {
                boss.frame = (boss.frame + 1) % boss.numFrames;
                boss.state = 0;
            }
        } else if (boss.aniCounter % 25 == 0) {
                boss.frame = (boss.frame + 1) % boss.numFrames;
            }

        if (boss.aniCounter % 100 == 0) {
            boss.state = 1;
        }
    }

    boss.aniCounter++;
    boss.screenCol = boss.worldCol - hOff;
    boss.screenRow = boss.worldRow - vOff;
}

void drawBoss() {
    if (boss.active && bosslives != 0) {
        shadowOAM[boss.index].attr0 = (boss.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[boss.index].attr1 = (boss.screenCol & COLMASK) | ATTR1_MEDIUM;
        shadowOAM[boss.index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((boss.frame * 4), ((boss.state * 4) + 20));
    } else {
        shadowOAM[boss.index].attr0 = ATTR0_HIDE;
    }
}

void initShooter() {
    shooter.worldRow = 135;
    shooter.worldCol = 453;
    shooter.height = 8;
    shooter.width = 15;
    shooter.active = 0;
    shooter.index = boss.index + 1;
}

void updateShooter() {
    if (boss.active) {
        if (boss.aniCounter % 200 == 0) {
            bullet.active = 1;
        }
    }

    shooter.screenCol = shooter.worldCol - hOff;
    shooter.screenRow = shooter.worldRow - vOff;
}

void drawShooter() {
    if (shooter.active) {
        shadowOAM[shooter.index].attr0 = (shooter.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_WIDE;
        shadowOAM[shooter.index].attr1 = (shooter.screenCol & COLMASK) | ATTR1_TINY;
        shadowOAM[shooter.index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8, 20);
    } else {
        shadowOAM[shooter.index].attr0 = ATTR0_HIDE;
    }
}

void initBullet() {
    bullet.worldRow = 135;
    bullet.worldCol = 448;
    bullet.height = 5;
    bullet.width = 8;
    bullet.cdel = 2;
    bullet.index = shooter.index + 1;
    bullet.active = 0;
}

void updateBullet() {
    if (bullet.active && (bullet.worldCol > 231) && (bosslives != 0)) {
        bullet.worldCol -= bullet.cdel;
    } else {
        bullet.active = 0;
        bullet.worldRow = 135;
        bullet.worldCol = 448;
    }

    bullet.screenCol = bullet.worldCol - hOff;
    bullet.screenRow = bullet.worldRow - vOff;
}

void drawBullet() {
    if (bullet.active) {
        shadowOAM[bullet.index].attr0 = (bullet.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[bullet.index].attr1 = (bullet.screenCol & COLMASK) | ATTR1_TINY;
        shadowOAM[bullet.index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8, 22);
    } else {
        shadowOAM[bullet.index].attr0 = ATTR0_HIDE;
    }
}

void initButtons() {
    for (int i = 0; i < BUTTONCOUNT; i++) {
        bbuttons[i].height = 4;
        bbuttons[i].width = 8;
        bbuttons[i].worldRow = 140;
        bbuttons[i].active = 0;
        bbuttons[i].index = bullet.index + 1 + i;
        bbuttons[i].pressed = 0;
        bbuttons[i].color = i;
    }
    bbuttons[0].worldCol = 336;
    bbuttons[1].worldCol = 368;
    bbuttons[2].worldCol = 400;
}

void updateButtons(BOSSBUTTONS* b) {
    if (bosslives != 0) {
        for (int i = 0; i < POOPCOUNT; i++) {
            if (poops[i].active && (collision(b->worldRow, b->worldCol, b->height, b->width,
                poops[i].worldRow, poops[i].worldCol, poops[i].height, poops[i].width))
                &&  (b->color == boss.color)) {
                rock.falling = 1;
                poops[i].active = 0;
            }
        }
    }

    b->screenCol = b->worldCol - hOff;
    b->screenRow = b->worldRow - vOff;
}

void drawButtons(BOSSBUTTONS* b) {
    if (b->active) {
        shadowOAM[b->index].attr0 = (b->screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[b->index].attr1 = (b->screenCol & COLMASK) | ATTR1_TINY;
        shadowOAM[b->index].attr2 = ATTR2_PALROW(7) | ATTR2_TILEID(8 + b->color, 26);
    } else {
        shadowOAM[b->index].attr0 = ATTR0_HIDE;
    }
}

void initThoughts() {
    for (int i = 0; i < THOUGHTCOUNT; i++) {
        thoughts[i].height = 14;
        thoughts[i].width = 16;
        thoughts[i].worldRow = 55;
        thoughts[i].worldCol = 472;
        thoughts[i].active = 0;
        thoughts[i].index = bbuttons[2].index + 1 + i;
        thoughts[i].color = i;
    }
}

void updateThoughts() {
    if (level == 1) {
        thoughts[boss.color].active = 1;
    }

    thoughts[boss.color].screenCol = thoughts[boss.color].worldCol - hOff;
    thoughts[boss.color].screenRow = thoughts[boss.color].worldRow - vOff;
}

void drawThoughts(THOUGHT* t) {
    if (t->active && bosslives != 0) {
        shadowOAM[t->index].attr0 = (t->screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[t->index].attr1 = (t->screenCol & COLMASK) | ATTR1_SMALL;
        shadowOAM[t->index].attr2 = ATTR2_PALROW(7) | ATTR2_TILEID(8 + (t->color * 2), 24);
    } else {
        shadowOAM[t->index].attr0 = ATTR0_HIDE;
    }
}

void initRock() {
    rock.height = 12;
    rock.width = 5;
    rock.worldRow = 12;
    rock.worldCol = 461;
    rock.falling = 0;
    rock.active = 0;
    rock.index = thoughts[2].index + 2;
    rock.rdel = 1;
}

void updateRock() {
    if (rock.falling) {
        if (rock.worldRow + rock.height < boss.worldRow) {
            rock.worldRow += rock.rdel;
        } else {
            rock.worldRow = 12;
            rock.worldCol = 461;
            rock.falling = 0;
            boss.state = 2;
            bosslives--;
            thoughts[boss.color].active = 0;
            boss.color = rand() % 3;
        }
    }

    rock.screenCol = rock.worldCol - hOff;
    rock.screenRow = rock.worldRow - vOff;
}

void drawRock() {
    if (rock.active) {
        shadowOAM[rock.index].attr0 = (rock.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_TALL;
        shadowOAM[rock.index].attr1 = (rock.screenCol & COLMASK) | ATTR1_TINY;
        shadowOAM[rock.index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(9, 20);
    } else {
        shadowOAM[rock.index].attr0 = ATTR0_HIDE;
    }
}

void initBar() {
    for (int i = 0; i < BARLENGTH; i++) {
        bar[i].height = 16;
        bar[i].width = 6;
        bar[i].worldCol = 475;
        bar[i].worldRow = 96 + (i * 16);
        bar[i].active = 0;
        bar[i].index = rock.index + 1 + i;
    }
}

void updateBar(BAR* b) {
    b->screenCol = b->worldCol - hOff;
    b->screenRow = b->worldRow - vOff;
}

void drawBar(BAR* b) {
    if (b->active && bosslives != 0) {
        shadowOAM[b->index].attr0 = (b->screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_TALL;
        shadowOAM[b->index].attr1 = (b->screenCol & COLMASK) | ATTR1_TINY;
        shadowOAM[b->index].attr2 = ATTR2_PALROW(6) | ATTR2_TILEID(11, 20);
    } else {
        shadowOAM[b->index].attr0 = ATTR0_HIDE;
    }
}

void initBossHealth() {
    bHealth.height = 4;
    bHealth.width = 32;
    bHealth.worldCol = 447;
    bHealth.worldRow = 90;
    bHealth.active = 0;
    bHealth.index = bar[2].index + 1;
}

void updateBossHealth() {
    bHealth.screenCol = bHealth.worldCol - hOff;
    bHealth.screenRow = bHealth.worldRow - vOff;
}

void drawBossHealth() {
    if (bHealth.active) {
        shadowOAM[bHealth.index].attr0 = (bHealth.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_WIDE;
        shadowOAM[bHealth.index].attr1 = (bHealth.screenCol & COLMASK) | ATTR1_SMALL;
        shadowOAM[bHealth.index].attr2 = ATTR2_PALROW(7) | ATTR2_TILEID(8 + (5 - bosslives), 28);
    } else {
        shadowOAM[bHealth.index].attr0 = ATTR0_HIDE;
    }
}

//********************************* Toilet Paper *******************************

void initTP() {
    tp.height = 11;
    tp.width = 15;
    tp.worldRow = 114;
    tp.worldCol = 264;
    tp.frame = 0;
    tp.numFrames = 4;
    tp.active = 1;
    tp.aniCounter = 0;
    tp.index = 2 + POOPCOUNT + PORTALCOUNT + ENEMYCOUNT + 1;
}

void updateTP() {

    if (tp.active) {
        if (tp.aniCounter % 20 == 0) {
            tp.frame = (tp.frame + 1) % tp.numFrames;
        }
    }

    tp.aniCounter++;
    tp.screenCol = tp.worldCol - hOff;
    tp.screenRow = tp.worldRow - vOff;
}

void drawTP() {
    if (tp.active) {
        shadowOAM[tp.index].attr0 = (tp.screenRow & ROWMASK) | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[tp.index].attr1 = (tp.screenCol & COLMASK) | ATTR1_SMALL;
        shadowOAM[tp.index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(16 + (tp.frame * 2), 8);
    } else {
        shadowOAM[tp.index].attr0 = ATTR0_HIDE;
    }
}

void initTPBot() {
    for (int i = 0; i < TPCOUNT; i++) {
        tpBot[i].row = 149;
        tpBot[i].col = 114 + (i * 16);
        tpBot[i].index = 2 + POOPCOUNT + PORTALCOUNT + ENEMYCOUNT + 2 + i;
    }
}

void updateTPBot() {
    if (player.tpCount == 0) {
        tpBot[0].active = 0;
        tpBot[1].active = 0;
    } else if (player.tpCount == 1) {
        tpBot[0].active = 1;
        tpBot[1].active = 0;
    } else if (player.tpCount == 2) {
        tpBot[0].active = 1;
        tpBot[1].active = 1;
    }
}

void drawTPBot(TPBOT* t) {

    if (t->active) {
        shadowOAM[t->index].attr0 = t->row | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[t->index].attr1 = t->col | ATTR1_SMALL;
        shadowOAM[t->index].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(16, 8);
    } else {
        shadowOAM[t->index].attr0 = ATTR0_HIDE;
    }
}


//*********************************** Cheat word *******************************

void initCheatOnOff() {
    cheatO.row = 152;
    cheatO.col = 48;
    cheatO.index = 128 - 1;
    cheatO.frame = 28;
}

void drawCheatOnOff() {
    shadowOAM[cheatO.index].attr0 = cheatO.row | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[cheatO.index].attr1 = cheatO.col | ATTR1_SMALL;
    shadowOAM[cheatO.index].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(30 + cheat, cheatO.frame);
}

void initCheatWord() {
    for (int i = 0; i < CHEATWORDLENGTH; i++) {
        cheatWord[i].row = 152;
        cheatWord[i].col = i * 8;
        cheatWord[i].index = 128 - CHEATWORDLENGTH + i - 1;
        cheatWord[i].frame = 22 + i;
    }
}

void drawCheatWord(CHEATWORD* c) {
    shadowOAM[c->index].attr0 = c->row | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[c->index].attr1 = c->col | ATTR1_TINY;
    shadowOAM[c->index].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(30, c->frame);
}

//********************************** Fly Power *********************************

void initFlyBar() {
    for (int i = 0; i < FLYBARLENGTH; i++) {
        fly[i].row = 152;
        fly[i].col = 176 + (i * 8);
        fly[i].index = 128 - CHEATWORDLENGTH - FLYBARLENGTH + i - 2;
        fly[i].frame = 22 + i;
    }
}

void drawFlyBar(FLY* f) {
    shadowOAM[f->index].attr0 = f->row | ATTR0_4BPP | ATTR0_WIDE;
    shadowOAM[f->index].attr1 = f->col | ATTR1_SMALL;
    shadowOAM[f->index].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(29, f->frame);
}

void initFlyPower() {
    power.row = 152;
    power.col = 176;
    power.index = 128 - CHEATWORDLENGTH - FLYBARLENGTH - 3;
    power.frame = 31;
    power.level = 0;
}

void drawFlyPower() {
    shadowOAM[power.index].attr0 = power.row | ATTR0_4BPP | ATTR0_SQUARE;
    while (power.level < player.flyLimit - 2) {
        shadowOAM[power.index].attr1 = (power.col + power.level) | ATTR1_TINY;
        power.level += 2;
    }
    shadowOAM[power.index].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(29, power.frame);
    power.level = 0;
}

//******************************* Lives ****************************************

void initLives() {
    for (int i = 0; i < LIVESREMAINING; i++) {
        lives[i].row = 153;
        lives[i].col = 146 + (i % 3) * 10;
        lives[i].active = 1;
        lives[i].index = 128 - CHEATWORDLENGTH - FLYBARLENGTH - LIVESREMAINING - 3 + i;
    }
}

void drawLives(HEART* h) {
    if (h->active) {
        shadowOAM[h->index].attr0 = h->row | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[h->index].attr1 = h->col | ATTR1_TINY;
        shadowOAM[h->index].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID(1, 12);
    } else {
        shadowOAM[h->index].attr0 = ATTR0_HIDE;
    }
}

//********************************** Sound *************************************

void setupSounds() {
    REG_SOUNDCNT_X = SND_ENABLED;

    REG_SOUNDCNT_H = SND_OUTPUT_RATIO_100 |
                     DSA_OUTPUT_RATIO_100 |
                     DSA_OUTPUT_TO_BOTH |
                     DSA_TIMER0 |
                     DSA_FIFO_RESET |
                     DSB_OUTPUT_RATIO_100 |
                     DSB_OUTPUT_TO_BOTH |
                     DSB_TIMER1 |
                     DSB_FIFO_RESET;

    REG_SOUNDCNT_L = 0;
}

void playSoundA( const unsigned char* sound, int length, int frequency, int loops) {
        dma[1].cnt = 0;

        int ticks = PROCESSOR_CYCLES_PER_SECOND/frequency;

        DMANow(1, sound, REG_FIFO_A, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

        REG_TM0CNT = 0;

        REG_TM0D = -ticks;
        REG_TM0CNT = TIMER_ON;

        soundA.data = sound;
        soundA.length = length;
        soundA.frequency = frequency;
        soundA.duration = ((VBLANK_FREQ * length) / frequency);
        soundA.isPlaying = 1;
        soundA.loops = loops;
        soundA.vbCount = 0;
}


void playSoundB( const unsigned char* sound, int length, int frequency, int loops) {

        dma[2].cnt = 0;

        int ticks = PROCESSOR_CYCLES_PER_SECOND/frequency;

        DMANow(2, sound, REG_FIFO_B, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

        REG_TM1CNT = 0;

        REG_TM1D = -ticks;
        REG_TM1CNT = TIMER_ON;

        soundB.data = sound;
        soundB.length = length;
        soundB.frequency = frequency;
        soundB.duration = ((VBLANK_FREQ * length) / frequency);
        soundB.isPlaying = 1;
        soundB.loops = loops;
        soundB.vbCount = 0;
}

void pauseSound() {
    soundA.isPlaying = 0;
    soundB.isPlaying = 0;
    REG_TM0CNT = 0;
    REG_TM1CNT = 0;
}

void unpauseSound() {
    soundA.isPlaying = 1;
    soundB.isPlaying = 1;
    REG_TM0CNT = TIMER_ON;
    REG_TM1CNT = TIMER_ON;
}

void stopSound() {
    soundA.isPlaying = 0;
    soundB.isPlaying = 0;
    dma[1].cnt = 0;
    dma[2].cnt = 0;
    REG_TM0CNT = 0;
}

void setupInterrupts() {
    REG_IME = 0;
    REG_INTERRUPT = (unsigned int)interruptHandler;

    REG_IE |= INT_VBLANK;
    REG_DISPSTAT |= INT_VBLANK_ENABLE;
    REG_IME = 1;
}

void interruptHandler() {
    REG_IME = 0;
    if(REG_IF & INT_VBLANK) {
        soundA.vbCount++;
        soundB.vbCount++;
        if (soundA.isPlaying){
            if (soundA.vbCount == soundA.duration) {
                dma[1].cnt = 0;
                REG_TM0CNT = 0;
                soundB.isPlaying = 0;
                soundA.vbCount = 0;
                playSoundA(soundA.data, soundA.length, soundA.frequency, 1);
            }
        }
        if (soundB.isPlaying){
            if (soundB.vbCount == soundB.duration) {
                dma[2].cnt = 0;
                REG_TM1CNT = 0;
                soundB.isPlaying = 0;
                soundB.vbCount = 0;
            }
        }
        REG_IF = INT_VBLANK;
    }
    REG_IME = 1;
}















