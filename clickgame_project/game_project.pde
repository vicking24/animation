//VICTORIA
//nov 16

//pause screen


//MODES

//mode 0= intro
//mode 1= customize background
//mode 2= game over
//mode 3 = customize theme
//mode 4= sports
//mode 5= winter
//mode 6= comics
//mode 7= ellipse
//mode 8= pause
//mode 9= new high score


//======================== variables ====================================

float mode;
color red = #FF0000;
color green = #00FF12;
color blue =#0041FF;
color orange = #FF7748;
int point=0; //points
int live=3; //lives
float x=400; //circle movement horizontal
float y=300; //circle movement vertical
float vx= random (-0.1, 0.3);
float vy= random (-0.1, 0.3);
float a =200; //cirlce size
PImage bball;
PImage happy;
PImage captain;
PImage deadpool;
PImage angry;
PImage soccer;
color bg;
int highscore;
float randomizeT = random (1, 90);
float randomizeB = random (1, 90);
float smallx= 100;
float smally = 400;
float smallvx = random (-1.2, 1.2);
float smallvy= random (-1.2, 1.2);
int play;


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;

AudioPlayer song1;
AudioPlayer mario;
AudioPlayer gameover;

//======================= setup =========================================

void setup () {
  size (800, 600);
  textAlign (CENTER, CENTER);
  bball= loadImage ("basketball.png");
  happy= loadImage ("happyemoji.png");
  captain= loadImage ("captainamerica.png");
  angry= loadImage ("angry.png");
  deadpool= loadImage ("deadpool.png");
  soccer = loadImage ("soccer.png");
  imageMode (CENTER);
  minim=new Minim (this);
  song1= minim.loadFile ("daihao.mp3");
  mario= minim.loadFile ("mario.mp3");
  gameover= minim.loadFile ("mario game over.mp3");
  
}

//====================== draw =========================================

void draw () {
  if (mode ==0) { //intro
    introScreen ();
  } else if (mode == 4) { //sports
    sports ();
    highscore();
  } else if (mode==5) { //winter
    winter();
    highscore();
  }else if (mode ==6) {
    comic();
    highscore();
  }else if (mode==7) {
    regular();
    highscore();
  }else if (mode == 2) { //game over
    gameOver ();
  } else if (mode ==3) { //customize
   customizeT ();
  } else if (mode==1) {
    customizeB();
  } else if (mode==8) { //pause
    pause ();
  }else if (mode==9) {
    newscore();
  }else { //error!
    error ();
  
}
  }

//===========================customize theme================================
void customizeT() {
background (green);
fill (0);
textSize (100);
text ("Customize", 400, 100);

textSize (60);
text ("THEMES:", 125, 300);

if (dist(300, 300, mouseX, mouseY)<50){
fill (#938B8B);
}else{
fill (255);
}
ellipse (300, 300, 100, 100);

if (dist(450, 300, mouseX, mouseY)<50){
fill (#938B8B);
}else{
fill (255);
}
ellipse (450, 300, 100, 100);

if (dist(600, 300, mouseX, mouseY)<50){
fill (#938B8B);
}else{
fill (255);
}
ellipse (600, 300, 100, 100);

if (mouseX<450 && mouseX> 250 && mouseY<550 && mouseY>490){
fill (#B9B2B2);
} else {
fill (255);
}
rect (250, 490, 200, 60);

fill (0);
textSize (30);
text ("Sport", 298, 295);

text ("EMOJI", 450, 297);

text ("Comic", 600, 295);

text ("RANDOMIZE", 350, 515);


}

//======================= customize background ======================

void customizeB () {
background (green);
fill (0);
textSize (100);
text ("Customize", 400, 100);

textSize (48);
text ("BACKGROUND:", 175, 300);

if (dist(400, 300, mouseX, mouseY)<50 || bg == blue){ //blue
fill (#6297C1);
}else{
fill (blue);
}
ellipse (400, 300, 100, 100);

if (dist(550, 300, mouseX, mouseY)<50 || bg== #A844D3){ //purple
fill (#BA90DB);
}else{
fill (#A844D3);
}
ellipse (550, 300, 100, 100);

if (dist(700, 300, mouseX, mouseY)<50 || bg== #F5EE0F){ //yellow
fill (#DEE36E);
}else{
fill (#F5EE0F);
}
ellipse (700, 300, 100, 100);

if (mouseX<450 && mouseX> 250 && mouseY<550 && mouseY>490){
fill (#B9B2B2);
} else {
fill (255);
}
rect (250, 490, 200, 60);


fill (0);
textSize (30);
text ("Blue", 398, 295);

text ("Puple", 550, 297);

text ("Yellow", 700, 295);

text ("RANDOMIZE", 350, 515);

if (mouseX>650 && mouseX<760 && mouseY>500 && mouseY< 530){
  fill (#D87B76);
  } else {
  fill (#D82E25);
  }
noStroke ();
rect (650, 500, 70, 30);
triangle (720, 480, 720, 550, 760, 515);

fill (0);
text ("NEXT", 690, 513);

}

//============================= introScreen =============================

void introScreen () {
  mario.play();
  
  background (green);
  fill (255);
  textSize (100);
  text ("Clicking Game", 400, 100);
  
  if (mouseX>250 && mouseX<550 && mouseY>300 && mouseY<400) {
  fill (#7A7DED);
  } else {
  fill (#1D21ED); //blue
  }
  stroke (0);
  strokeWeight (2);
  rect (250, 300, 300, 100);
  
  fill (0);
  textSize (80);
  text ("Start", 400, 340);
  
  if (mouseX>300 && mouseX<500 && mouseY>450 && mouseY<520) {
  fill (#7A7DED);
  } else {
  fill (#1D21ED); //blue
  }
  stroke (0);
  strokeWeight (2);
  rect (300, 450, 200, 70);

fill (0);
textSize (35);
text ("Customize", 400, 480); 
  
}

//==============================high score===============================

void highscore () {
if (highscore< point){
highscore = point;

}


}

//============================ sports =====================================

void sports () {
  song1.play();
  background (bg);
  fill (255);

  textSize (50);
  text ("Points:"+point, 150, 50);
  text ("Lives:" +live, 150, 150);
  text ("Highscore:"+highscore, 600, 100);

  //movement
  stroke (255);
  strokeWeight (5);
  fill (0);
  image (bball, x, y, a, a);
  //ellipse (x, y, a, a);
  x=x+vx;
  y=y+vy;
  
  //bouncing
  if (x<a/2 || x>-a/2+800) { // ||is or
  vx=vx*-1;

}

  if (y<a/2 || y>-a/2+600) {
  vy = vy*-1;
}
  //small circle
  fill (#A07C47);
  image (soccer, smallx, smally, 80, 80);
  //ellipse (smallx, smally, 80, 80);
  smallx=smallx+smallvx;
  smally=smally+smallvy;
  
  //bouncing
  if (smallx<40 || smallx>760) { 
  smallvx=smallvx*-1;

}

  if (smally<40 || smally>560) {
  smallvy = smallvy*-1;
}
  
  //pause
  stroke (0);
  strokeWeight (2);
  if (mouseX>700 && mouseX<760 && mouseY>20 && mouseY<80) {
  fill (#938B8B);
  } else {
  fill (255);
  }
  rect (700, 20, 60, 60);
  fill (0);
  textSize (40);
  text ("||", 730, 45);
  
  
}

//=========================emoji=========================================

void winter() {
  song1.play();
  background (bg);
  fill (255);

  textSize (50);
  text ("Points:"+point, 150, 50);
  text ("Lives:" +live, 150, 150);
  text ("Highscore:"+highscore, 600, 100);

  //movement
  stroke (255);
  strokeWeight (5);
  fill (0);
  image (happy, x, y, a, a);
  //ellipse (x, y, a, a);
 
  x=x+vx;
  y=y+vy;
  
  //bouncing
  if (x<a/2 || x>-a/2+800) { // ||is or
  vx=vx*-1;

}

  if (y<a/2 || y>-a/2+600) {
  vy = vy*-1;
}
  
//small circle
fill (#A07C47);
image (angry, smallx, smally, 80, 80);
  //ellipse (smallx, smally, 80, 80);
  smallx=smallx+smallvx;
  smally=smally+smallvy;
  
  //bouncing
  if (smallx<40 || smallx>760) { 
  smallvx=smallvx*-1;

}

  if (smally<40 || smally>560) {
  smallvy = smallvy*-1;
}

//pause
  stroke (0);
  strokeWeight (2);
  if (mouseX>700 && mouseX<760 && mouseY>20 && mouseY<80) {
  fill (#938B8B);
  } else {
  fill (255);
  }
  rect (700, 20, 60, 60);
  fill (0);
  textSize (40);
  text ("||", 730, 45);
  

}

//=============================comic====================================

void comic () {
 song1.play();
  background (bg);
  fill (255);

  textSize (50);
  text ("Points:"+point, 150, 50);
  text ("Lives:" +live, 150, 150);
  text ("Highscore:"+highscore, 600, 100);

  //movement
  stroke (255);
  strokeWeight (5);
  fill (0);
  image (captain , x, y, a, a);
  //ellipse (x, y, a, a);
  x=x+vx;
  y=y+vy;
  
  //bouncing
  if (x<a/2 || x>-a/2+800) { // ||is or
  vx=vx*-1;

}

  if (y<a/2 || y>-a/2+600) {
  vy = vy*-1;
}
 
 //small circle
 fill (#A07C47);
 image (deadpool, smallx, smally, 80, 80);
  //ellipse (smallx, smally, 80, 80);
  smallx=smallx+smallvx;
  smally=smally+smallvy;
  
  //bouncing
  if (smallx<40 || smallx>760) { 
  smallvx=smallvx*-1;

}

  if (smally<40 || smally>560) {
  smallvy = smallvy*-1;
}

//pause
  stroke (0);
  strokeWeight (2);
  if (mouseX>700 && mouseX<760 && mouseY>20 && mouseY<80) {
  fill (#938B8B);
  } else {
  fill (255);
  }
  rect (700, 20, 60, 60);
  fill (0);
  textSize (40);
  text ("||", 730, 45);
  

}


//=========================regular==================================

void regular () {
 song1.play();
  background (blue);
  fill (255);

  textSize (50);
  text ("Points:"+point, 150, 50);
  text ("Lives:" +live, 150, 150);
  text ("Highscore:"+highscore, 600, 100);

  //movement
  stroke (255);
  strokeWeight (5);
  fill (0);
  ellipse (x, y, a, a);
  x=x+vx;
  y=y+vy;
  
  //bouncing
  if (x<a/2 || x>-a/2+800) { // ||is or
  vx=vx*-1;

}

  if (y<a/2 || y>-a/2+600) {
  vy = vy*-1;
}
 //small circle
 fill (#A07C47); //brown
  ellipse (smallx, smally, 80, 80);
  smallx=smallx+smallvx;
  smally=smally+smallvy;
  
  //bouncing
  if (smallx<40 || smallx>760) { 
  smallvx=smallvx*-1;

}

  if (smally<40 || smally>560) {
  smallvy = smallvy*-1;
}

//pause
  stroke (0);
  strokeWeight (2);
  
if (mouseX>700 && mouseX<760 && mouseY>20 && mouseY<80) {
  fill (#938B8B);
  } else {
  fill (255);
  }
  rect (700, 20, 60, 60);
  fill (0);
  textSize (40);
  text ("||", 730, 45);
  
  
  
}

//=========================== gameOver ===================================

void gameOver () {
  gameover.play();
  background (orange);
  fill (255);
  textSize (100);
  text ("GAME OVER", 400, 100);
  fill (255);
  textSize (70);
   text ("Score:"+point, 420, 220);
  if (mouseX>250 && mouseX<550 && mouseY>300 && mouseY<400) {
  fill (#B2B428); //yellow
  } else {
  fill (#D5D82E);
  }
  stroke (0);
  strokeWeight (2);
  rect (250, 320, 300, 100);
  
  fill (0);
  textSize (80);
  text ("Retry", 400, 360);
}

//=============================pause==================================

void pause () {
background (0);
textSize (200);
fill (255);
text ("PAUSE", 400, 200);

if (mouseX>300 && mouseX<500 && mouseY>400 && mouseY<480) {
fill (#938B8B);
  } else {
  fill (255);
  }
rect (300, 400, 200, 80);

fill (0);
textSize (40);
text ("resume", 395, 440);

  

}


//==================new score ==============================

void newscore () {

  gameover.play();
  background (orange);
  fill (255);
  textSize (100);
  text ("HIGH SCORE!!!", 400, 100);
  fill (255);
  textSize (70);
   text ("Score:"+point, 420, 220);
  if (mouseX>250 && mouseX<550 && mouseY>300 && mouseY<400) {
  fill (#B2B428); //yellow
  } else {
  fill (#D5D82E);
  }
  stroke (0);
  strokeWeight (2);
  rect (250, 320, 300, 100);
  
  fill (0);
  textSize (80);
  text ("Retry", 400, 360);




}



//============================ error ===================================

void error () {
  background (red);
  fill (255);
  textSize (100);
  text ("ERROR", 200, 100);
}

//============================= mouseReleased ================================

void mouseReleased () {
  
  //===============mode 0=================
  if (mode==0) { //intro
 
    point=0; //resets the points and lives
    live=3;
    vx=random (-0.1, 0.3); 
    vy=random (-0.1, 0.3);
    x=400;
    y=300;
    a=200;
    smallx= 100;
    smally = 400;
    smallvx = random (-1.2, 1.2);
    smallvy= random (-1.2, 1.2);
    randomizeT= random (0, 90);
    randomizeB= random (0, 90);
     
    if (mouseX>250 && mouseX<550 && mouseY>300 && mouseY<400) {
    mode=7;
    play=7;
    mario.pause();
    mario.rewind();
    }
    
      
   if (mouseX>300 && mouseX<500 && mouseY>450 && mouseY<520) {
   mode=1;
   }
   
   //================mode 4,5,6,7======================
    
  } else if (mode==4|| mode==5 || mode==6 ||mode==7) { //game
  
  if (mouseX>700 && mouseX<760 && mouseY>20 && mouseY<80) {
    mode=8;
  
  } else if (dist (x, y, mouseX, mouseY) < a/2) {
      point =point+1; // increase points
      vx=vx*1.1;
      vy=vy*1.1;
      fill (255);
      text ("+1", x, y);
      
    } else if (dist (smallx, smally, mouseX, mouseY) < 40) {
    point=point+2;
    smallvx=smallvx*1.2;
      smallvy=smallvy*1.2;
       fill (255);
      text ("+2", smallx, smally);
    
    }else {
      live=live-1; //decrease the lives
       fill (255);
      text ("-1", mouseX, mouseY);
    }
    
    
    if (live<1) {
      if (highscore>point){
      live =0;
      mode=2;
      song1.pause();
      song1.rewind();
    } else {
    live=0;
    mode=9;
    song1.pause();
    song1.rewind();
    }
  }
    
    if (vx>6||vy>6) {
    vx=6;
    vy=6;
    a=a-10;
    }
  
   
   // ===================mode 2======================
   
    
  } else if (mode==2) { //gameOver
    if (mouseX>250 && mouseX<550 && mouseY>300 && mouseY<400) {
    mode =0; //switching to intro
    gameover.pause();
    gameover.rewind();
    }
    
    //============ mode 3===================
    
  } else if (mode==3) { //customizeT
  if (dist(300, 300, mouseX, mouseY)<50){
    mode=4;
    play=4;
     mario.pause();
    mario.rewind();
  
  }

if (dist(450, 300, mouseX, mouseY)<50){
  mode=5;
  play=5;
   mario.pause();
    mario.rewind();
  
}

if (dist(600, 300, mouseX, mouseY)<50){
  mode=6;
  play=6;
  mario.pause();
    mario.rewind();
  }
  
  if (mouseX<450 && mouseX> 250 && mouseY<550 && mouseY>490){
    if (randomizeT<30) {
    mode= 4;
    play=4;
    } else if (randomizeT<60 && randomizeT>30) {
    mode =5;
    play=5;
    } else if (randomizeT<90 && randomizeT>60){
    mode =6;
    play=6;
    }
  }

//=================mode 1=================
  } else if (mode==1) { //customizeB
  
  if (dist(400, 300, mouseX, mouseY)<50){
   bg= blue;
  }

if (dist(550, 300, mouseX, mouseY)<50){
   bg=#A844D3; //yellow
}

if (dist(700, 300, mouseX, mouseY)<50){
  bg= #F5EE0F; //purple
  }
  
  if (mouseX>650 && mouseX<760 && mouseY>500 && mouseY< 530){
  mode =3;
  }
  
  if (mouseX<450 && mouseX> 250 && mouseY<550 && mouseY>490){
  if (randomizeB<30) {
     bg= blue;
    } else if (randomizeB<60 && randomizeB>30) {
    bg=#A844D3;
    } else if (randomizeB<90 && randomizeB>60){
    bg= #F5EE0F;
    }
  }
  
  //==========================mode 8====================
  } else if (mode==8) { //pause
  
  song1.pause();
  
  if (mouseX>300 && mouseX<500 && mouseY>400 && mouseY<480) {
  mode= play;
    
  }
  
  //====================mode 9========================
  } else if (mode==9) { // new high score
  
  if (mouseX>250 && mouseX<550 && mouseY>300 && mouseY<400) {
    mode =0; //switching to intro
    gameover.pause();
    gameover.rewind();
 
  }
  }

  //============error===================
  
  else { //error
  mode=0;
  }
  
  }

//========================end of sketch====================================
