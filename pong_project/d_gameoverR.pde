void gameoverR () {
  spongebob.play();
  
  background (#1E66D6);
  textSize (50);
fill (255);
text("BLUE WINS", 400, 200);

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


void gameoverRClicked(){
  
if (mouseX>300 && mouseX< 500 && mouseY>400 && mouseY <500){
mode =intro;
spongebob.pause();
spongebob.rewind();

}


}
