//VICTORIA
// sept 19

int x; //hill 1
int y; //hill 2
int z; //hill 3
int a; //cloud
int l; //small hill 1
int m; //small hill 2
int n; //small hill 3
int o; //small hill 4
int p; //small hill 5
int carx; //car
int r1;//stripe 1
int r2;//stripe 2
int r3;//stripe 3
int r4;//stripe 4
int r5;//stripe 5
int r6;//stripe 6
int sign1; //sign stick
int sign2; //sign head


void setup () {
  size (800, 600);
  x=-200;
  y=200;
  z=600;
  a=400;
  l=-100;
  m=100;
  n=300;
  o=500;
  p=700;
  carx=0;
  r1=-160;
  r2=0;
  r3=160;
  r4=320;
  r5=480;
  r6=640;
  sign1=7;
  sign2=10;
}

void draw () { 
  background (20, 206, 250);
  noStroke ();
  
  fill (255);
  ellipse (a, 80, 50, 50); //middle cloud
  a= a+1;
  if (a>950) {
    a= -50;
  }
  
  ellipse (a-25, 80, 50, 50); //left cloud
  if (a>950) {
    a= -50;
  }
  
  ellipse (a+25, 80, 50, 50); //right cloud
  if (a>950) {
    a= -50;
  }
 
  ellipse (a, 55, 50, 50); //top cloud
  
  
  fill (116, 206, 69);
  ellipse (x, 300, 400, 400); //hill1
  x=x+2;
  if (x>1000) {
    x= -200;
  }
  
  ellipse (y, 300, 400, 400); //hill2
  y=y+2;
  if (y>1000) {
    y= -200;
  }
  
  ellipse (z, 300, 400, 400); //hill3
  z= z+2;
  if (z>1000) {
    z= -200;
  }
  
  fill (0);
  ellipse (l, 300, 200, 200); //small hill 1
  l=l+4;
  if (l>900) {
    l= -100;
  }
  
  ellipse (m, 300, 200, 200); //small hill 2
  m=m+4;
  if (m>900) {
    m= -100;
  }
  
  ellipse (n, 300, 200, 200); //small hill 3
  n=n+4;
  if (n>900) {
    n= -100;
  }
  
  ellipse (o, 300, 200, 200); //small hill 4
  o=o+4;
  if (o>900) {
    o= -100;
  }
  
  ellipse (p, 300, 200, 200); //small hill 5
  p=p+4;
  if (p>900) {
    p= -100;
  }
  
  fill (106, 68, 31);
  rect (0, 310, 800, 290); //ground
  
  fill (150);
  rect (0, 400, 800, 150);// road
  
  fill (211, 184, 47);
  rect (0, 400, 800, 10); //top road boundary
  rect (0, 540, 800, 10); //bottom road boundary
  
  fill (0);
  rect (r1, 470, 100, 7); //stripe1
  r1= r1+11;
  if (r1>900) {
    r1=-100;
  }
  
  rect (r2, 470, 100, 7); //stripe2
  r2= r2+11;
  if (r2>900) {
    r2=-100;
  }
  
  rect (r3, 470, 100, 7); //tripe 3
  r3= r3+11;
  if (r3>900) {
    r3=-100;
  }
  
  rect (r4, 470, 100, 7); //stripe4
  r4= r4+11;
  if (r4>900) {
    r4=-100;
  }
  
  rect (r5, 470, 100, 7); //stripe5
  r5= r5+11;
  if (r5>900) {
    r5=-100;
  }
  
  rect (r6, 470, 100, 7); //stripe 6
  r6= r6+11;
  if (r6>900) {
    r6=-100;
  }
  
  fill (100);
  rect (sign1, 260, 7, 130); //sign stick
  sign1=sign1+11;
  if (sign1>930){
    sign1=-130;
  }
  
  fill (206, 80, 17);
  stroke (50);
  strokeWeight (5);
  triangle (sign2-50, 170, sign2+50, 170, sign2, 270);
  sign2=sign2+11;
  if (sign2>933) {
    sign2=-127;
  }
 
 noStroke ();
 pushMatrix (); //car
 translate (carx, 75);
 car ();
 carx=carx+1;
 if (carx>900) {
 carx=-125;
 }

 popMatrix ();
  
  
}



  void car () {
    
  fill (234, 21, 21);
  rect (10, 350, 90, 70); //car body
  
  rect (-35, 380, 45, 40); //car head
  
  rect (100, 380, 35, 40); //car tail
  
  fill (0);
  
  ellipse (100, 420, 50, 50); //right wheel
  
  ellipse (10, 420, 50, 50); //left wheel
  
  }
