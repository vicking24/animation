class Bullet {

  float x, y, d, vx, vy;
  boolean alive;
  
Bullet () {

  x=hero.x;
  y=hero.y;
  d=10;
  
  PVector direction= new PVector (mouseX-x, mouseY-y); // (x, y), direction it is shooting at
direction.setMag (10); // speed

vx= direction.x;
vy=direction.y;

alive=true;

}

void show () {
fill (#BC1E1E);
noStroke();
ellipse (x, y, d, d);

}

void act () {
x=x+vx;
y=y+vy;

if (x<0||x>width||y<0||y>height) {
alive=false;
}



}




}
