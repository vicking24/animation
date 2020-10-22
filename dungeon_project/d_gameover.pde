void gameover () {
  
  background (#DE1B1B);

if (mouseX>300 && mouseX<500 && mouseY>500 && mouseY<600) { //start
  fill (#938B8B);
  } else {
  fill (255);
  }
  rect (300, 500, 200, 100);
  textSize (60);
  fill (0);
  text ("RETRY", 400, 550);


}

void gameoverClicked () {

if (mouseX>300 && mouseX<500 && mouseY>500 && mouseY<600){
mode=intro;
hero.x=400;
hero.y=400;
hero.health=3;

  }




}
