void play () {
  dream.play();

  
  background (0);
  fill (#ABDE55); //green
  stroke (#ABDE55);
  strokeWeight (2);
  line (400, 0, 400, 600);
  fill (0);
  ellipse (400, 300, 150, 150);
  
  
  if (upkey==true)  yr=yr-10; //if there's only one code, braces are not needed
  
  if (downkey ==true)  yr=yr+10;
  
  
  if (wkey==true)  yl=yl-10;
  
  if (skey ==true)  yl=yl+10;
  
  noStroke();
  fill (#D61E1E); //left paddle
  ellipse (xl, yl, 150, 150);
  if (yl<-30) {
  yl=-30;
  }
  
  if (yl>630) {
  yl=630;
  }
  
  fill (#1E66D6); //right paddle
  ellipse (xr, yr, 150, 150);
  if (yr<-30) {
  yr=-30;
  }
 
  if (yr>630) {
  yr=630;
  }
  
  
  //ball movement
  fill (255);
  ellipse (xb, yb, 50, 50);
  if (start==true) {
    xb=xb+vx;
    yb=yb+vy;
  }

//wall bouncing

  if (yb<=25 || yb>=575) {
  vy = vy*-1;
}

 if (yb<25) {
 yb=25;
 
 }

if (yb>575) {
 yb=575;

 }

if (dist (xl, yl, xb, yb) < 100) { //ball bounce of left paddle
vy= (yb-yl)*0.13;
vx= (xb-xl)*0.13;
}

if (dist (xr, yr, xb, yb) < 100) { // ball bounce of right paddle
vy= (yb-yr)*0.13;
vx= (xb-xr)*0.13;
}

//restart

if (xb<25) {
pointr=pointr+1;
xb=400;
yb=300;
start=false;
} 

if (xb>775) {
pointl=pointl+1;
xb=400;
yb=300;
start=false;
}

//point

textSize (40);
fill (255);
text (":", 400, 20);

fill (#D61E1E);
text ("0"+pointl, 350, 20);

fill (#1E66D6);
text ("0"+pointr, 450, 20);


if (xb==400 && yb==300){
start = false;
}

if (start==false) {
 textSize (40);
 fill (255);
text("CLICK SCREEN TO START", 400, 200);

}

if (pointl>4){
mode=gameoverL;

dream.pause();
dream.rewind();


}

if (pointr>4) {
mode= gameoverR;

dream.pause();
dream.rewind();


}

//pause button
stroke (0);
  strokeWeight (2);
  
if (mouseX>700 && mouseX<760 && mouseY>20 && mouseY<80) {
  fill (#938B8B);
  } else {
  fill (255);
  }
  rect (700, 20, 60, 60);
  fill (0);
  textSize (40);
  text ("||", 730, 45);


}


void playClicked () {

  if (mouseX>700 && mouseX<760 && mouseY>20 && mouseY<80) {
    mode=pause;
    
} else if (mouseX>0 && mouseX<800 && mouseY >0 && mouseY <600 && start==false) {
  start=true;
  vx=vx*-1;
 
  }



}
