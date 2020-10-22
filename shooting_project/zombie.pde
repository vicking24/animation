class Zombie {

  boolean alive;
  float x, y, vx, vy, d, v;
  
 
Zombie () {
  
  int spawn= int (random (0, 4));
  if (spawn== 0) { //top
  x=random (0, 800);
  y=-10;
} else if (spawn ==1) { //bottom
x= random (0, 800);
y=810;
} else if (spawn ==2) { //left
x=-10;
y= random (0, 800);
} else if (spawn ==3) { //right
x=810;
y= random (0, 800);
}

  d=20;
  v= random (1, 5);
  alive=true;
  
 PVector direction= new PVector (hero.x-x, hero.y-y); // (x, y), direction it is shooting at
direction.setMag (v); // speed

vx= direction.x;
vy=direction.y;



}

void show () {
  fill (#1D982A);
ellipse (x, y, d, d);

PVector direction= new PVector (hero.x-x, hero.y-y); // (x, y), direction it is shooting at
direction.setMag (v); // speed

vx= direction.x;
vy=direction.y;


}

void act () {
x=x+vx;
y=y+vy;

  int j = 0;
  while (j < bulletList.size()) {
    Bullet b= bulletList.get (j);
   if (dist (b.x, b.y, x, y)<15) {
   alive =false;
   b.alive=false;
   }
   j++;
   
  }
  


}







}
