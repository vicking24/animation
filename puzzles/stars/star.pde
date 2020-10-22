class Star {

  //INSTANCE VARIABLES
  float x, y, vx, vy, size;

  //CONSTRUCTOR
  Star() {
    x = random(width);
    y = random(height);
    //vx = random(1,5); //blown sideways
    vy = random(1, 5);
    size = vy; //small ones are smaller and is slower, like in distance
  }

  //BEHAVIOUR FUNCTIONS
  void show() {
    fill(255);
    rect(x, y, size, size);
  }

  void act() {
    x = x + vx;
    y = y + vy;
    if (y > height + size/2) {
      y = -size/2; //gets it back to the top of the screen
      x = random(width);
    }
  }
}
