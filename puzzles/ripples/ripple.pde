class Ripple {

  //INSTANCE VARIABLES
  float x, y, size, alpha;

  //CONSTRUCTOR
  Ripple() {
    x = random(width);
    y = random(height);
    size = random(0, 50);
  }

  //BEHAVIOUR FUNCTIONS
  void show() {
    alpha = map(size, 0, 50, 255, 0); //fading when it gets bigger
    stroke(255, alpha);
    ellipse(x, y, size, size/2);
  }

  void act() {
    size = size + 1;
    if (size >= 50) {
      size = 0;
      x = random(width);
      y = random(height);
    }
  }
}
