class sprinkle { 

  float x, y, size, vx, vy, ax, ay; //a= acceleration, creating gravity
  boolean alive;

  sprinkle() {
    x = mouseX;
    y = mouseY;
    size= random (10, 50);
    vx=random (-3, 3);
    vy=random (-10, -5);
    ax=0;
    ay=0.3;
    alive=true;
  }


  void show() {

    image (circle, x, y, size, size);
  }


  void act() {
    x = x + vx;
    y=y+vy;
    
    vx=vx+ax;
    vy=vy+ay;
    
    if (x<0 || x>width || y>height){
    alive=false;
    
    
    }

    //if (x>width ||x<0 || y>height|| y<0) {
    //x=mouseX;
    //y=mouseY;
    // size= random (10, 50);
    //vx=random (-3, 3);
    //vy=random (-10, -5);
    //ax=0;
    //ay=0.3;
    
    }
    
    
    
    
    
    
  }
