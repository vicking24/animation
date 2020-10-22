class Enemy {

  float x, y, vx, vy, d, x2, y2, d2;
  int hp, myroomx, myroomy;

  Enemy (int _myroomx, int _myroomy) {
    x= random (100, width-100);
    y= random (100, height-100);
    vx=0;
    vy=0;
    d=30;
    hp=3;
    x2=random (0, 800);
    y2=random (0, 800);
    d2=40;
    myroomx=_myroomx;
    myroomy=_myroomy;
  }

  void show () {
    fill (#14C43E);
    ellipse (x, y, d, d);


    fill (0);
    textSize (10);
    text (hp, x, y);
    
     fill (#14C43E);
    ellipse (x2, y2, d2, d2);
    
    
    
  }


  void act () {
    x= x+vx;
    y=y+vy;
    checkcollisions();
  }


  void checkcollisions () {

    int i = 0; //bullet
    while (i < bulletList.size()) {
      Bullet b = bulletList.get(i);
      if (dist (b.x, b.y, x, y) <b.d/2+d/2) {
        hp--;
        b.alive=false;
      } 


      i++;
    }


    if (dist (hero.x, hero.y, x, y) < hero.d/2+ d/2) {
      hero.health--;
      hero.x=400;
      hero.y=400;
      roomx=1;
      roomy=1;
      hp=3;
    }
    
    if (dist (hero.x, hero.y, x2, y2) < hero.d/2+ d2/2) {
      hero.health--;
      hero.x=400;
      hero.y=400;
      roomx=1;
      roomy=1;
    }
  }
}
