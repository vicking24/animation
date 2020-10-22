class Paddle {
  float x;

  Paddle () {
  }

  void show() {
    fill (255);
    ellipse (x, 840, 200, 200);

    if (x>700) {
      x=700;
    }

    if (x<100) {
      x=100;
    }
  }

  void act() {

    x=mouseX;
  }
}
