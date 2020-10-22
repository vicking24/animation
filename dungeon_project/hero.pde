class Hero {

  float x, y, d, speed;
  boolean alive;
  int spritenum; //the picture thats currently showing
  int THRESHOLD; //how long until you change spritenum
  int count; //keep track of how much time passed between frames of animation
  int health;



  Hero () {

    x=400;
    y=400;
    d=30;
    speed=5;
    alive=true;
    spritenum =0;
    THRESHOLD= 10;
    count=0;
    health =3;
  }

  void show () {
    fill (0);
    text (health, x, y+50);

    if (health==0) {
      mode=gameover;
    }

    if (alive==true) {
      //fill (0);
      //ellipse (x, y, d, d);

      count++;
      if (count==THRESHOLD) {
        count=0;
        spritenum++;
      }

      if (spritenum >= currentaction.size() ) {

        spritenum=0;
      }

      image (currentaction.get (spritenum), x, y, d, d*2);

      stroke (0);
      strokeWeight (1);
      line (x, y, mouseX, mouseY); //target line when shooting
    }
  }

  void act () {

    if (up) {
      y=y-speed;
      currentaction=walkup;
    }

    if (down) {
      y=y+speed;
      currentaction=walkdown;
    }

    if (left) {
      x=x-speed;
      currentaction=walkleft;
    }

    if (right) {
      x=x+speed;
      currentaction= walkright;
    }

    if (!up && !down && !left && !right) {
      currentaction=idle;
    }


    //walls
    if (x>800) x=800;
    if (x<0) x=0;
    if (y>800) y=800;
    if (y<0) y=0;

    if (n) checknorthexit ();
    if (s) checksouthexit ();
    if (w) checkwestexit();
    if (e) checkeastexit();
  }

  void checknorthexit() {
   
    if (dist(x, y, 400, 50)<50) { //n
      roomy=roomy-1;
      x= 400;
      y=700;
      switchRoom();
    }
  }

  void checksouthexit() {
  
    if (dist(x, y, 400, 750)<50) { //s
      roomy=roomy+1;
      x=400;
      y=100;
      switchRoom();
    }
  }

  void checkwestexit () {
   
    if (dist(x, y, 50, 400)<50) { //w
      roomx=roomx-1;
      x=700;
      y=400;
      switchRoom();
    }
  }

  void checkeastexit() {
   
    if (dist(x, y, 750, 400)<50) { //e
      roomx=roomx+1;
      x=100;
      y=400;
      switchRoom();
    }
  }
}
