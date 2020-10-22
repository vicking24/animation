class Ball {

  float x, y, vx, vy, d;

  Ball () {
    x= 400;
    y= 500;
    vx= random (-7, 7);
    vy=4;
    d=50;
  }

  void show () {
    ellipse (x, y, d, d);
    
  }

  void act () {
    x=x+vx;
    y=y+vy;

    if (x>width-d/2||x<d/2) {
      vx=vx*-1;
    }

    if (y<d/2) {
      vy=vy*-1;
    } 
    
    if (y>height){
    mode =2;
    }
    
    
    if (dist (x, y, p.x, 840)<125) { //p is variable for class Paddle, p._ calls the variable in that class
    vx= (x-p.x)*0.1;
    vy=(y-840)*0.1;
    
    }
    
    if (mode==1) {
    vx=0;
    vy=0;
    }
    
  }
}
