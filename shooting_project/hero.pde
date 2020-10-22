class Hero {
  
  float x, y, d, speed;
  boolean alive;

Hero () {

  x=400;
  y=400;
  d=30;
  speed=5;
alive=true;


}

void show () {

  if (alive==true) {
fill (0);
ellipse (x, y, d, d);

stroke (0);
strokeWeight (1);
line (x, y, mouseX, mouseY); //target line when shooting


  }


}

void act () {

if (up) y=y-speed;
if (down) y=y+speed;
if (left) x=x-speed;
if (right) x=x+speed;

if (x>800) x=800;
if (x<0) x=0;
if (y>800) y=800;
if (y<0) y=0;

 int j=0;
   while (j < zombieList.size()) {
    Zombie z = zombieList.get(j);
if (dist(x, y, z.x, z.y)<25) {
alive=false;
}
j++;

}
}

}
