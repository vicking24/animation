void intro () {

  background (#17C135);
  
 
  if (mouseX>300 && mouseX<500 && mouseY>500 && mouseY<600) { //start
  fill (#938B8B);
  } else {
  fill (255);
  }
  rect (300, 500, 200, 100);
  textSize (60);
  fill (0);
  text ("START", 400, 550);


}

void introClicked () {
  if (mouseX>300 && mouseX<500 && mouseY>500 && mouseY<600){
mode=play;
  }




}
