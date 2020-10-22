//victoria
//apr 25

ArrayList<Bullet> bulletList;   // lists can store many objects
ArrayList<Zombie> zombieList;
Hero hero; 

boolean up, down, left, right;

void setup() {
  noStroke();
  textAlign (CENTER, CENTER);
  size(800, 800);
 bulletList = new ArrayList<Bullet>();   //make the list
 zombieList = new ArrayList<Zombie>();
  hero =new Hero();
  imageMode (CENTER);


  // ~~~~~~~~~ Done making targets! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
}


void draw() {
  background(255);
  // ~~~~~~~~~ Go through the list and tell each target to show and act ~~~~
  int i = 0;
  while (i < bulletList.size()) {
    Bullet b = bulletList.get(i);
    if (b.alive==true){
      b.show();
      b.act();
      i=i+1;
    }else {
    bulletList.remove (i);
    }
  }
  
  int j=0;
   while (j < zombieList.size()) {
    Zombie z = zombieList.get(j);
    if (z.alive==true){
      z.show();
      z.act();
      j=j+1;
    }else {
    zombieList.remove (j);
    }
  }
   
  hero.show();
  hero.act();
zombieList.add (new Zombie ());

  // ~~~~~~~~~ Done showing and acting each target ~~~~~~~~~~~~~~~~~~~~~~~~~
}




void keyPressed() {
if (keyCode == UP) up=true;
if (keyCode == DOWN) down=true;
if (keyCode == LEFT) left=true;
if (keyCode == RIGHT) right=true;

}


void keyReleased () {
if (keyCode == UP) up=false;
if (keyCode == DOWN) down=false;
if (keyCode == LEFT) left=false;
if (keyCode == RIGHT) right=false;


}

void mousePressed () {
 if (hero.alive==true) {
bulletList.add (new Bullet ());
  }

}
