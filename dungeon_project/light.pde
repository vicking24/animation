class Light {
  int alpha;
  float x, y, w, h;

  Light () {
    x=lightx;
    y=lighty;
    w=pixelsize;
    h=pixelsize;
  }


  void show () {
    noStroke();
    fill (0, alpha);
    rect (x, y, w, h);
  }


  void act () {

    float herolight= dist (x, y, hero.x, hero.y);
   alpha = int (map (herolight, 0, 200, 0, 255));
  }
}
