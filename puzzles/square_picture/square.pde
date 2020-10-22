class square {

float x, y, size;
color c;

square () {
x=random (width);
y= random (height); 
size=5;
c= get ( int(x), int (y) );
rectMode (CENTER);


}


void show () {
  noStroke();
  fill (c);
rect (x, y, size, size);




}


void act () {

size= dist (mouseX, mouseY, x, y)/7;



}

}
