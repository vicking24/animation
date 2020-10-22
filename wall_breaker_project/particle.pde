class Particle {
  
  float x,y,size, vx, vy;
  boolean alive;

Particle (float incomingx, float incomingy) {
x= incomingx;
y=incomingy;
size= random (15, 50);
vx= random (-5, 5);
vy= random (-5, 5);
alive =true;



}

void show () {

 image (circle, x, y, size, size);


}

void act () {

  x = x + vx;
    y=y+vy;
    
    
if (x<0 || x>width || y>height){
    alive=false;
    
    
    }





}











}
