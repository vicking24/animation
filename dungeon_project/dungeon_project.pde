//Victoria
//may 8


Hero hero; 
ArrayList<Bullet> bulletList; 
ArrayList<Enemy> enemyList; 
ArrayList<Light> lightList; 
ArrayList<Enemy1> enemy1List;

ArrayList <PImage> idle;
ArrayList <PImage> walkleft;
ArrayList <PImage> walkright;
ArrayList <PImage> walkup;
ArrayList <PImage> walkdown;
ArrayList <PImage> currentaction;




final int intro=1; //final means to lock the definition
final int play=2;
final int pause=3;
final int gameover=4;

int mode =intro;
boolean up, down, left, right;

PImage map;
int roomx, roomy, mapw, maph;
boolean n, s, w, e; //are there doors in these directions
color white= #FFFFFF;
color black= #000000;
float lightx, lighty;
int pixelsize;


void setup () {
  size (800, 800);
  textAlign (CENTER, CENTER);
  roomx=1;
  roomy=1;
  imageMode (CENTER);
  map=loadImage ("map.png");
  mapw= map.width;
  maph= map.height;
  switchRoom ();
  bulletList = new ArrayList<Bullet>();
  enemyList = new ArrayList<Enemy>();
  enemy1List = new ArrayList<Enemy1>();
  lightList = new ArrayList<Light>();
  enemyList.add (new Enemy(1, 1));
  enemy1List.add (new Enemy1(1, 1));
  pixelsize=5;
  hero =new Hero();

  idle = new ArrayList <PImage> ();
  walkleft = new ArrayList <PImage> ();
  walkright = new ArrayList <PImage> ();
  walkup = new ArrayList <PImage> ();
  walkdown = new ArrayList <PImage> ();

  idle.add (loadImage ("sprites/12449_02.png"));

  walkleft.add (loadImage ("sprites/12449_16.png"));
  walkleft.add (loadImage ("sprites/12449_17.png"));
  walkleft.add (loadImage ("sprites/12449_18.png"));
  walkleft.add (loadImage ("sprites/12449_19.png"));

  walkright.add (loadImage ("sprites/12449_08.png"));
  walkright.add (loadImage ("sprites/12449_09.png"));
  walkright.add (loadImage ("sprites/12449_10.png"));
  walkright.add (loadImage ("sprites/12449_11.png"));

  walkdown.add (loadImage ("sprites/12449_12.png"));
  walkdown.add (loadImage ("sprites/12449_13.png"));
  walkdown.add (loadImage ("sprites/12449_14.png"));
  walkdown.add (loadImage ("sprites/12449_15.png"));

  walkup.add (loadImage ("sprites/12449_04.png"));
  walkup.add (loadImage ("sprites/12449_05.png"));
  walkup.add (loadImage ("sprites/12449_06.png"));
  walkup.add (loadImage ("sprites/12449_07.png"));

  currentaction=idle;





  int i = 0;
  while (lighty < height) {
    lightList.add(new Light());
    i=i+1;
    lightx=lightx+pixelsize;
    if (width<lightx) {
      lightx=pixelsize;
      lighty=lighty+pixelsize;
    }
  }
}

void draw () {

  if (mode==intro) {
    intro();
  } else if (mode ==play) {
    play();
  } else if (mode== pause) {
    pause();
  } else if (mode==gameover) {
    gameover();
  }
}

void mouseReleased () {

  if (mode==intro) {
    introClicked();
  } else if (mode ==play) {
    playClicked();
  } else if (mode== pause) {
    pauseClicked();
  } else if (mode==gameover) {
    gameoverClicked();
  }
}



void keyPressed() {
  if (keyCode == UP) up=true;
  if (keyCode == DOWN) down=true;
  if (keyCode == LEFT) left=true;
  if (keyCode == RIGHT) right=true;
}


void keyReleased () {
  if (keyCode == UP) up=false;
  if (keyCode == DOWN) down=false;
  if (keyCode == LEFT) left=false;
  if (keyCode == RIGHT) right=false;
}
