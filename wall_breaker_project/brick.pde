class brick {
  float x, y, d;
  boolean alive;
  int lives;

  brick () {

    x=brickx;
    y=bricky;
    d=100;
    alive=true;
    lives = int(random (1, 4));
  }


  void show () {

    if (lives==3) {
      fill (0);
    } else if (lives == 2) {
      fill (100);
    } else if (lives ==1) {
      fill (200);
    }
    ellipse (x, y, d, d);
  }

  void act () {
    if (dist (x, y, ball.x, ball.y) <75) {
      ball.vx= (ball.x-x)*0.13;
      ball.vy= (ball.y-y)*0.13;
      lives=lives-1;

      if (lives==0) {
        alive=false;
        int j=0;
        while (j < m) {
          particleList.add(new Particle(x, y));
          j=j+1;
        }
      }
    }
  }
}
