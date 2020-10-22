class Enemy1 { //bounce into trap

  float x1, y1, vx1, vy1, d1;
  int hp1, myroomx, myroomy;

  Enemy1 (int __myroomx, int __myroomy) {
    myroomx=__myroomx;
    myroomy=__myroomy;
    x1=100;
    d1=50;
    y1=300;
    vx1=3;
    vy1=3;
    hp1=3;
  }

  void show () {
    
    fill (#14C43E);
    
    ellipse (x1, y1, d1, d1);
   
    
    fill (0);
    textSize (20);
    text (hp1, x1, y1);
    
    
  }


  void act () {
    checkcollisions();
    
    
    if (x1<15||x1>785) {
    vx1=vx1*-1;
    }
    
     if (y1<15||y1>785) {
    vy1=vy1*-1;
    }
    

    x1= x1+vx1;
    y1=y1+vy1;
   
   
    
   
    
  }


  void checkcollisions () {

    int j = 0; //bullet
    while (j < bulletList.size()) {
      Bullet b = bulletList.get(j);
       if (dist (b.x, b.y, x1, y1) <b.d/2+d1/2) {
        hp1--;
        b.alive=false;
      } 

      j++;
    }
    
    
      
  
if (dist (hero.x, hero.y,x1, y1) < hero.d/2+ d1/2) {
      hero.health--;
      hero.x=400;
      hero.y=400;
      roomx=1;
      roomy=1;
      hp1=3;
    }
}
}
