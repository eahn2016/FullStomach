typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int height;
    int width;
    int rdel;
    int cdel;
    int aniCounter;
    int curFrame;
    int numFrames;
    int aniState;
    int prevAniState;
    int poopTimer;
    int flyLimit;
    int hurtTimer;
    int hurt;
    int tpCount;
    int initBoss;
} PLAYER;

typedef struct {
    int worldRow;
    int worldCol;
    int screenCol;
    int screenRow;
    int rdel;
    int width;
    int height;
    int active;
    int index;
} POOP;

typedef struct {
    int worldRow;
    int worldCol;
    int screenRow;
    int screenCol;
    int cdel;
    int height;
    int width;
    int active;
    int frame;
    int state;
    int aniCounter;
    int index;
    int moveCounter;
} ENEMY;

typedef struct {
    int worldRow;
    int worldCol;
    int screenRow;
    int screenCol;
    int height;
    int width;
    int active;
    int frame;
    int state;
    int aniCounter;
    int index;
    int numFrames;
    int color;
} BOSS;

typedef struct {
    int worldRow;
    int worldCol;
    int screenCol;
    int screenRow;
    int height;
    int width;
    int active;
    int index;
} SHOOTER;

typedef struct {
    int worldRow;
    int worldCol;
    int screenRow;
    int screenCol;
    int height;
    int width;
    int cdel;
    int index;
    int active;
} BULLET;

typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int height;
    int width;
    int index;
    int aniCounter;
    int curFrame;
    int numFrames;
    int active;
} PORTAL;

typedef struct {
    int height;
    int width;
    int worldRow;
    int worldCol;
    int screenRow;
    int screenCol;
    int active;
    int index;
    int pressed;
    int color;
    int canBeHit;
} BOSSBUTTONS;

typedef struct {
    int height;
    int width;
    int worldRow;
    int worldCol;
    int screenRow;
    int screenCol;
    int active;
    int index;
    int color;
} THOUGHT;

typedef struct {
    int height;
    int width;
    int worldRow;
    int worldCol;
    int falling;
    int active;
    int index;
    int rdel;
    int screenRow;
    int screenCol;
} ROCK;

typedef struct {
    int height;
    int width;
    int worldCol;
    int worldRow;
    int active;
    int index;
    int screenCol;
    int screenRow;
} BAR;

typedef struct {
    int height;
    int width;
    int worldCol;
    int worldRow;
    int screenCol;
    int screenRow;
    int active;
    int index;
} BOSSHEALTH;

typedef struct {
    int height;
    int width;
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int index;
    int frame;
    int numFrames;
    int active;
    int aniCounter;
} TP;

typedef struct {
    int row;
    int col;
    int index;
    int active;
} TPBOT;

typedef struct {
    int row;
    int col;
    int index;
    int frame;
} CHEATO;

typedef struct {
    int row;
    int col;
    int index;
    int frame;
} CHEATWORD;

typedef struct {
    int row;
    int col;
    int index;
    int frame;
    int level;
} FLY;

typedef struct {
    int row;
    int col;
    int active;
    int index;
} HEART;

typedef struct {
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vbCount;
} SOUND;

#define POOPCOUNT 5
#define PORTALCOUNT 2
#define CHEATWORDLENGTH 6
#define FLYBARLENGTH 8
#define ENEMYCOUNT 13
#define LIVESREMAINING 3
#define TPCOUNT 2
#define BUTTONCOUNT 3
#define THOUGHTCOUNT 3
#define BOSSLIVES 5
#define BARLENGTH 3

#define MAPHEIGHT 256
#define MAPWIDTH 512

extern PLAYER player;
extern POOP poops[POOPCOUNT];
extern ENEMY enemies[ENEMYCOUNT];
extern PORTAL portal[PORTALCOUNT];
extern BOSS boss;
extern SHOOTER shooter;
extern BULLET bullet;
extern BOSSBUTTONS bbuttons[BUTTONCOUNT];
extern THOUGHT thoughts[THOUGHTCOUNT];
extern ROCK rock;
extern BAR bar[BARLENGTH];
extern BOSSHEALTH bHealth;
extern TP tp;
extern TPBOT tpBot[TPCOUNT];
extern CHEATO cheatO;
extern CHEATWORD cheatWord[CHEATWORDLENGTH];
extern FLY fly[FLYBARLENGTH];
extern FLY power;
extern HEART lives[LIVESREMAINING];

extern SOUND soundA;
extern SOUND soundB;

extern int level;
extern int firstSwitch;
extern int cheat;
extern int bosslives;

void initGame();
void updateGame();
void drawGame();

void initPlayer();
void updatePlayer();
void drawPlayer();
void shootPoop();

void initPoop();
void updatePoop(POOP *);
void drawPoop(POOP *);

void initEnemy();
void updateEnemy(ENEMY *);
void drawEnemy(ENEMY *);

void initPortal();
void updatePortal(PORTAL *);
void drawPortal(PORTAL *);

void initCheatOnOff();
void drawCheatOnOff();

void initCheatWord();
void drawCheatWord(CHEATWORD *);

void initFlyBar();
void drawFlyBar(FLY *);
void initFlyPower();
void drawFlyPower();

void initLives();
void drawLives(HEART *);

void initTP();
void updateTP();
void drawTP();
void initTPBot();
void updateTPBot();
void drawTPBot(TPBOT *);

void initBoss();
void updateBoss();
void drawBoss();
void initShooter();
void updateShooter();
void drawShooter();
void initBullet();
void updateBullet();
void drawBullet();
void initButtons();
void updateButtons(BOSSBUTTONS *);
void drawButtons(BOSSBUTTONS *);
void initThoughts();
void updateThoughts();
void drawThoughts(THOUGHT *);
void initRock();
void updateRock();
void drawRock();
void initBar();
void updateBar(BAR *);
void drawBar(BAR *);
void initBossHealth();
void updateBossHealth();
void drawBossHealth();

void setupSounds();
void playSoundA(const unsigned char* sound, int length, int frequency, int loops);
void playSoundB(const unsigned char* sound, int length, int frequency, int loops);
void pauseSound();
void unpauseSound();
void stopSound();
void setupInterrupts();
void interruptHandler();
