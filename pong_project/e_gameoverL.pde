void gameoverL () {
  spongebob.play();
  
background (#D61E1E);
textSize (50);
fill (255);
text("RED WINS", 400, 200);


pointr=0;
pointl=0;
bg=#35A05F;

if (mouseX>300 && mouseX< 500 && mouseY>400 && mouseY <500) {
fill (#C3C494);
} else {
  fill (#CBCE19);
}
rect (300, 400, 200, 100);

textSize (40);
fill (0);
text ("RESTART", 400, 450);



}







void gameoverLClicked () {
  
if (mouseX>300 && mouseX< 500 && mouseY>400 && mouseY <500){
mode =intro;
spongebob.pause();
spongebob.rewind();

}


}
