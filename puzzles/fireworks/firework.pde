class firework {
  float x, y, vx, vy;
  int timer;
  boolean alive;
  
  
  firework () {
  x=mouseX;
  y=mouseY;
  vx=0;
  vy=-2;
  timer=100;
  alive=true;
  
  }
  
  void show () {
    fill (255);
    ellipse (x, y, 10, 10);
  
  
  }


void act() {
  
 y=y+vy;
 x=x+vx;
 
 timer=timer-1;
 
 if (timer<0){
 alive=false;
 sprinklelist.add (new sprinkle(x,y) );
 sprinklelist.add (new sprinkle(x,y) );
 sprinklelist.add (new sprinkle(x,y) );
 sprinklelist.add (new sprinkle(x,y) );
 sprinklelist.add (new sprinkle(x,y) );
 sprinklelist.add (new sprinkle(x,y) );
 
 }


}






}
