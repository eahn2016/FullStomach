#include <stdlib.h>
#include <string.h>
#include "myLib.h"
#include "cutscene.h"
#include "text.h"
#include "ghost.h"

int textSeed;
int enterSeed;

void initCutscene() {
    REG_DISPCTL = MODE3 | BG2_ENABLE;
    fillScreen3(BLACK);
}

void drawCutscene() {
    enterSeed++;
    waitForVBlank();

    if (textSeed == 0) {
        drawCSTextCenter("Where am I?");
        if (BUTTON_PRESSED(BUTTON_START)) {
            textSeed++;
        }
    } else if (textSeed == 1) {
        drawCSTextCenter("Am I dead?");
        if (BUTTON_PRESSED(BUTTON_START)) {
            textSeed++;
        }
    } else if (textSeed == 2) {
        drawFullscreenImage3(ghostBitmap);
        textSeed++;
    } else if (textSeed == 3) {
        drawString(72, 186, "Oh no", BLACK);
        drawString(80, 240 - (strlen("I'm a ghost!") * 6), "I'm a ghost!", BLACK);
        drawEnter();
        if (BUTTON_PRESSED(BUTTON_START)) {
            textSeed++;
        }
    } else if (textSeed == 4) {
        fillScreen3(BLACK);
        textSeed++;
    } else if (textSeed == 5) {
        drawCSTextCenter("My stomach doesn't feel good.");
        if (BUTTON_PRESSED(BUTTON_START)) {
            textSeed++;
        }
    } else if (textSeed == 6) {
        drawCSTextCenter("I need to poop!");
        if (BUTTON_PRESSED(BUTTON_START)) {
            textSeed++;
        }
    } else if (textSeed == 7) {
        drawCSTextCenter("I'll need toilet paper too!");
        if (BUTTON_PRESSED(BUTTON_START)) {
            textSeed++;
        }
    } else if (textSeed == 8) {
        drawCSTextCenter("Help me get to the light!");
        if (BUTTON_PRESSED(BUTTON_START)) {
            textSeed++;
        }
    }
}

void drawCSTextCenter(char *str) {
    waitForVBlank();
    drawRect3(76, 0, 8, 240, BLACK);
    drawString(76, (120 - (strlen(str) * 6) / 2), str, WHITE);
    drawEnter();
}

void drawEnter() {
    waitForVBlank();
    if (enterSeed % 20 > 9) {
        drawString(153, 174, "Press Start", BLACK);
    } else {
        drawString(153, 174, "Press Start", WHITE);
    }
}


























