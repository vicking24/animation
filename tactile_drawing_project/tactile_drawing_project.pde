//VICTORIA
//oct 5

color white=#FFFFFF;
color black=#120B0B;
color red=#EA0C0C;
color green=#0EEA0C;
color blue=#0C2FEA;
color purple=#9F0CEA;
color orange=#EA8A0C;
color yellow=#D3C013;
int slidersize=20;
int tool=0;
//0 means pen
//1 means pumpkin stamp
//2 means ghost stamp


float sliderx;
float thickness;

color pencolor=black; //set pen color to black

PImage pumpkin;
int pumpkinsize=98;

PImage ghost;
int ghostsize= 90;

void setup () {
  size (800, 600);
  background (255);
  pumpkin= loadImage ("pumpkin1.png");
  ghost= loadImage ("ghost.png");
  sliderx= 50; 
  thickness=1;
  imageMode (CENTER);
  textAlign (CENTER, CENTER);
}

void draw () {

  stroke (0);
  strokeWeight (1);
  fill (150);
  rect (0, 400, 800, 200); //tool bar

  fill (255);
  line (50, 450, 150, 450);
  ellipse (sliderx, 450, slidersize, slidersize); //slider

  if (dist(sliderx, 450, mouseX, mouseY) <15) {
    slidersize=25;
  } else {
    slidersize=20;
  }

  if (mousePressed) {
    if (dist (sliderx, 450, mouseX, mouseY)<30) { 
      sliderx=mouseX;

      if (sliderx <50) { 
        sliderx=50;
      }

      if (sliderx >150) { 
        sliderx=150;
      }
    }
  }

  thickness=map(sliderx, 50, 150, 1, 25); //when at 50 (x) it has 1 as thickness, at 150(x) has thickness 25

  if (mousePressed && mouseY<400) {  //so it won't draw in the toolbar 
    if (tool==0) { //draw with pen
      stroke(pencolor);
      strokeWeight (thickness);
      line (pmouseX, pmouseY, mouseX, mouseY);
    }
    if (tool==1) { //draw pumpkin stamp
      image (pumpkin, mouseX, mouseY, thickness*10, thickness*10);
    }
    if (tool==2) { //draw ghost stamp
      image (ghost, mouseX, mouseY, thickness*10, thickness*10);
    }
  }


  stroke(0);
  strokeWeight (1);
  if (dist (50, 550, mouseX, mouseY) <25) { //white circle
    fill (200);
  } else {
    fill (255);
  }
  ellipse (50, 550, 50, 50);
  fill (0);
  textSize (15);
  text ("ERASE", 50, 548);

  if (dist (150, 550, mouseX, mouseY) <25) { //black circle
    fill (50);
  } else {
    fill (0);
  }
  ellipse (150, 550, 50, 50);

  if (dist (250, 550, mouseX, mouseY) <25) { //red button
    fill (#AD1F1F);
  } else {
    fill (#EA0C0C);
  }
  ellipse (250, 550, 50, 50);

  if (dist (350, 550, mouseX, mouseY) <25) { //green button
    fill (#1BA01A);
  } else {
    fill (#0EEA0C);
  }
  ellipse (350, 550, 50, 50);

  if (dist (450, 550, mouseX, mouseY) <25) { //blue button
    fill(#14298E);
  } else {
    fill (#0C2FEA);
  }
  ellipse (450, 550, 50, 50);

  if (dist (550, 550, mouseX, mouseY) <25) { //purple button
    fill (#6A1F93);
  } else {
    fill (#9F0CEA);
  }
  ellipse (550, 550, 50, 50);

  if (dist (650, 550, mouseX, mouseY) <25) { //orange button
    fill(#AA6D22);
  } else {
    fill (#EA8A0C);
  }
  ellipse (650, 550, 50, 50);

  if (dist (750, 550, mouseX, mouseY) <25) { //yellow button
    fill (#9B8F22);
  } else {
    fill (#D3C013);
  }
  ellipse (750, 550, 50, 50);

  if (dist (520, 450, mouseX, mouseY) < 50) {
    pumpkinsize=105;
  } else {
    pumpkinsize=98;
  }
  image (pumpkin, 520, 450, pumpkinsize, pumpkinsize); //pumpkin stamp

  if (dist (400, 450, mouseX, mouseY) <50) {
    ghostsize=100;
  } else {
    ghostsize= 90;
  } 
  image (ghost, 400, 450, ghostsize, ghostsize); //ghost stamp

  if (tool ==0) { //make mouse a arrow
    cursor (ARROW);
  }

  if (tool==1) { //make mouse pumpkin
    cursor (pumpkin, 20, 20);
  }

  if (tool==2) { //make mouse ghost
    cursor (ghost, 20, 20);
  }


  if (mouseX>600 && mouseX <780 && mouseY >410 && mouseY<435) {
    fill (23, 85, 18);
  } else {
    fill (#2DBC24);
  } 
  rect (600, 410, 180, 25); //new button

  if (mouseX>600 && mouseX <780 && mouseY >445 && mouseY<470) {
    fill (23, 85, 18);
  } else {
    fill (#2DBC24);
  }
  rect (600, 445, 180, 25); //save button

  if (mouseX>600 && mouseX <780 && mouseY >480 && mouseY<505) {
    fill (23, 85, 18);
  } else {
    fill (#2DBC24);
  } 
  rect (600, 480, 180, 25); //load button

  fill (0);
  textSize (20);
  text ("NEW", 685, 420);
  text ("SAVE", 685, 455);
  text ("LOAD", 685, 490);

  fill (255);
  stroke (pencolor);
  strokeWeight (thickness);
 
  
  if (tool==0) {
  ellipse (250, 450, 35, 35); //indicator
  }
  
  if (tool==1) {
  image (pumpkin, 250, 460, thickness*5, thickness*5);
  }
  
  if (tool==2) {
  image (ghost, 250, 460, thickness*5, thickness*5);
  }
}


void mouseReleased () {// clicking on buttons
  if (dist (50, 550, mouseX, mouseY) <25) {
    pencolor=white;
    tool=0;
  }

  if (dist (150, 550, mouseX, mouseY) <25) {
    pencolor=black;
    tool=0;
  }

  if (dist (250, 550, mouseX, mouseY) <25) {
    pencolor=red;
    tool=0;
  }

  if (dist (350, 550, mouseX, mouseY) <25) {
    pencolor=green;
    tool=0;
  }

  if (dist (450, 550, mouseX, mouseY) <25) {
    pencolor=blue;
    tool=0;
  }

  if (dist (550, 550, mouseX, mouseY) <25) {
    pencolor=purple;
    tool=0;
  }

  if (dist (650, 550, mouseX, mouseY) <25) {
    pencolor=orange;
    tool=0;
  }

  if (dist (750, 550, mouseX, mouseY) <25) {
    pencolor=yellow;
    tool=0;
  }

  if (dist (520, 450, mouseX, mouseY) <50) { //pumpkin
    tool=1; 
    pencolor=white;
  }

  if (dist (400, 450, mouseX, mouseY) <50) { //ghost
    tool=2; 
    pencolor=white;
  }

  if (mouseX>600 && mouseX <780 && mouseY >410 && mouseY<435) { //new button
    background (255);
  }

  if (mouseX>600 && mouseX <780 && mouseY >445 && mouseY<470) { //save button
    selectOutput ("Save as...", "saveImage");
  }

  if (mouseX>600 && mouseX <780 && mouseY >480 && mouseY<505) { //load button
    selectInput ("PICK DA FILE, BRO<3", "openImage");
  }
}


void openImage (File f) {
  if (f!=null) {
    //kludge/fix bug
    int n=0;
    while (n<10) {
      PImage pic= loadImage (f.getAbsolutePath() );
      image (pic, 100, 300);
      n=n+1;
    }
  }
}

void saveImage (File f) {
  if (f !=null) {
    PImage canvas= get (0, 0, width-0, height-200);
    canvas.save (f.getAbsolutePath () );
  }
}
