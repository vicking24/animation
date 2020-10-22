//victoria
//apr 9


ArrayList<brick> brickList;   // lists can store many objects
ArrayList<Particle> particleList;
int n = 18;    //this is how many objects we will have
int m= 10;
int mode;
PImage circle;

float brickx, bricky;
Paddle p;
Ball ball; 


void setup() {
  noStroke();
  textAlign (CENTER, CENTER);
  size(800, 800);
  brickList = new ArrayList<brick>(n);   //make the list
  particleList = new ArrayList <Particle> (m);
  p=new Paddle();
  ball =new Ball();
  imageMode (CENTER);
  circle=loadImage ("sprinkle_pic.png");


  brickx= 100;
  bricky=125;


  // ~~~~~~~~~ Make a bunch of targets and store them in the list! ~~~~~~~~~
  int i = 0;
  while (i < n) {
    brickList.add(new brick());
    i=i+1;
    brickx=brickx+125;
    if (brickx>750) {
      brickx=100;
      bricky=bricky+150;
    }
  }

  // ~~~~~~~~~ Done making targets! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
}


void draw() {
  background(#E30707);
  // ~~~~~~~~~ Go through the list and tell each target to show and act ~~~~
  int i = 0;
  while (i < brickList.size()) {
    brick b = brickList.get(i);

    if (b.alive==true) {
      b.show();
      b.act();
      i=i+1;
    } else {
      brickList.remove (i);
    }
  } 
  if (i==0) {
    mode =1;
  }

  int j = 0;
  while (j < particleList.size()) {
    Particle s = particleList.get(j);

    if (s.alive==true) {
      s.show();
      s.act();
      j=j+1;
    } else {
      particleList.remove (j);
    }
  }


  p.show();
  p.act();

  ball.show();
  ball.act();


  if (mode==1) {
    win();
  } else if (mode==2) {
    lose();
  }



  // ~~~~~~~~~ Done showing and acting each target ~~~~~~~~~~~~~~~~~~~~~~~~~
}
