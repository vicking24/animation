void play () {

  background (255);
  stroke (0);
  strokeWeight (3);
  line (100, 100, 700, 100); //straight line
  line (700, 100, 700, 700);
  line (700, 700, 100, 700);
  line (100, 700, 100, 100);

  line (100, 100, 0, 0); //diagonal line
  line (700, 100, 800, 0);
  line (700, 700, 800, 800);
  line (100, 700, 0, 800);
  image (map, 550, 50, 80, 80);

  fill (0);
  if (n) ellipse (400, 50, 100, 50);
  if (s) ellipse (400, 750, 100, 50);
  if (w) ellipse (50, 400, 50, 100);
  if (e) ellipse (750, 400, 50, 100);

  stroke (0);
  strokeWeight (2);

  if (mouseX>650 && mouseX<710 && mouseY>20 && mouseY<80) { //pause
    fill (#938B8B);
  } else {
    fill (255);
  }
  rect (650, 20, 60, 60);
  fill (0);
  textSize (40);
  text ("||", 680, 48);


  int i = 0; //bullet
  while (i < bulletList.size()) {
    Bullet b = bulletList.get(i);
    if (b.alive==true) {
      b.show();
      b.act();
      i=i+1;
    } else {
      bulletList.remove (i);
    }
  }


  hero.show();
  hero.act();


  i = 0; //enemy
  while (i < enemyList.size()) {
    Enemy e = enemyList.get(i);
    if (e.hp>0 ) {
      
      if (e.myroomx==roomx && e.myroomy==roomy) {
        
        e.show();
        e.act();
      }
      i=i+1;
    } else {
      enemyList.remove (i);
    }

  }

  int  p = 0; //enemy1
  while (p < enemy1List.size()) {

    Enemy1 e1 = enemy1List.get(p);
    if (e1.hp1>0 ) {

      if (e1.myroomx==roomx && e1.myroomy==roomy) {
        e1.show();

        e1.act();
      }
      p=p+1;
    } else {
    enemy1List.remove (p);
    }
    
  }







  int g = 0;
  while (g < lightList.size()) {

    Light l = lightList.get(g);
    l.show();
    l.act();
    g++;
  }
}//--------------------------------------------------------------------------



void playClicked () {
  if (mouseX>650 && mouseX<710 && mouseY>20 && mouseY<80) {
    mode=pause;
  }

  if (hero.alive==true) {
    bulletList.add (new Bullet ());
  }
}//--------------------------------------------------------------------------


void switchRoom() {
  n=s=w=e=false;
  bulletList = new ArrayList<Bullet>();

  color north= map.get (roomx, roomy-1);
  color south=map.get (roomx, roomy+1);
  color west=map.get (roomx-1, roomy);
  color east=map.get (roomx+1, roomy);




  if (north != white) n=true; //!= means not true
  if (south != white) s=true;
  if (west != white) w=true;
  if (east != white) e=true;
}//--------------------------------------------------------------------------
