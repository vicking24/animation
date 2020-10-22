//Victoria
//Jan 15


final int intro=1; //final means to lock the definition
final int play=2;
final int pause=3;
final int gameoverR=4;
final int gameoverL=5;
final int single=6;
final int singlep=7;

int mode =intro; //don't put final here or else mode can't change

float xr=810; //right paddle
float yr=0;
float xl= -10; //left paddle
float yl=0;
float xb= 400; // ball
float yb =300;
float vx= -8; //ball movement
float vy=9;
int pointl=0;
int pointr=0;
color bg;


boolean upkey; //an on-off switch
boolean downkey;
boolean wkey;
boolean skey;
boolean start;


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;

AudioPlayer dream;
AudioPlayer mission;
AudioPlayer spongebob;

//==========================setup =========================================

void setup () {
size (800, 600);
textAlign (CENTER, CENTER);
minim=new Minim (this);
dream= minim.loadFile ("dream idol.mp3");
mission= minim.loadFile ("mission impossible.mp3");
spongebob= minim.loadFile ("spongebob.mp3");

}

//==============================draw====================================

void draw () {
if (mode==intro) {
 intro();
} else if (mode ==play) {
 play();
} else if (mode== pause) {
 pause();
} else if (mode==gameoverR) {
 gameoverR();
} else if (mode==gameoverL) {
 gameoverL();
} else if (mode==single) {
 single();
} else if (mode==singlep) {
 singlep();
}

}

//======================= mosue released==============================

void mouseReleased () {

if (mode==intro) {
 introClicked();
 
} else if (mode ==play) {
 playClicked();
 
} else if (mode== pause) {
 pauseClicked();
 
} else if (mode==gameoverR) {
 gameoverRClicked();
 
} else if (mode==gameoverL) {
 gameoverLClicked();
 
} else if (mode==single) {
 singleClicked();

} else if (mode==singlep) {
 singlepClicked();

}


}

//==================key pressed==============================

void keyPressed () {
if (keyCode == UP) {
upkey= true;

}

if (keyCode ==DOWN) {
downkey= true;
}

if (key =='w' || key== 'W') {
  wkey = true;
}
if (key =='s' || key== 'S') {
  skey = true;
}


}

//=====================key released ============================

void keyReleased () {
if (keyCode == UP) {
upkey= false;

}

if (keyCode ==DOWN) {
downkey= false;
}

if (key =='w' || key== 'W') {
  wkey = false;
}
if (key =='s' || key== 'S') {
  skey = false;
}


}
