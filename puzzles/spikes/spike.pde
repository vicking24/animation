class Spike {

  //INSTANCE VARIABLES
  float x, y, vy, size;

  //CONSTRUCTOR
  Spike() {
    x = random(width);
    y = random(height);
    size = random(1, 100);
  }

  //BEHAVIOUR FUNCTIONS
  void show() {
    fill(255);
    ellipse(x, y, size, size/2); //make it oval so it looks it's going up
  }

  void act() {
    if (size > 0) {
      y = y - 3; // control how much it goes up
      size = size - 1; //control how quick it shrinks
    }
  }
}
