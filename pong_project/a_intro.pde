void intro () {
  mission.play();
  
background (0);
fill (#ABDE55); //green
  stroke (#ABDE55);
  strokeWeight (2);
  line (400, 0, 400, 600);
  fill (0);
  ellipse (400, 300, 150, 150);
  
noStroke ();
fill (#D61E1E); //left paddle
  ellipse (xl, yl, 200, 200);
  
  fill (#1E66D6); //right paddle
  ellipse (xr, yr, 200, 200);
  
  fill (255);
  ellipse (xb, yb, 50, 50);
  
  
 if (mouseX>300 && mouseX< 500 && mouseY>400 && mouseY <500){ //start
   fill (#555C62);
 } else {
  fill (#B7BBC1);
}
  rect (300, 400, 200, 100);
  
  fill (0);
  textSize (40);
  text ("START", 400, 450);

//switches
if (mouseX>100 && mouseX< 300 && mouseY>100 && mouseY <200 || bg==#983434){ //onw player
fill (#983434);
} else {
fill (#D85151);
}
rect (100, 100, 200, 100);
fill (0);
textSize (30);
text ("ONE PLAYER", 200, 150);

if (mouseX>500 && mouseX< 700 && mouseY>100 && mouseY <200 || bg==#357BA0){ //two player
fill (#357BA0);
} else {
fill (#4DB3E8);
}
rect (500, 100, 200, 100);
fill (0);
textSize (30);
text ("TWO PLAYER", 600, 150);


}



void introClicked () {
if (mouseX>300 && mouseX< 500 && mouseY>400 && mouseY <500 && bg==#983434) { // one player
mode=single;
start=true;
mission.pause();
mission.rewind();

}

if (mouseX>300 && mouseX< 500 && mouseY>400 && mouseY <500 && bg==#357BA0) { // two player
mode=play;
start=true;
mission.pause();
mission.rewind();
}

if (mouseX>100 && mouseX< 300 && mouseY>100 && mouseY <200){
bg=#983434;

}

if (mouseX>500 && mouseX< 700 && mouseY>100 && mouseY <200){
bg=#357BA0;

}








}
