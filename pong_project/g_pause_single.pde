void singlep () {

  
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


void singlepClicked (){
  
if (mouseX>300 && mouseX<500 && mouseY>400 && mouseY<480) {
  mode=single;
    
  }



}
