class square {

float x, y, size;

square () {
x=random (width);
y= random (height); 
rectMode (CENTER);


}


void show () {
  noStroke();
  fill (255);
rect (x, y, size, size);




}


void act () {

size= dist (mouseX, mouseY, x, y)/7; //closer mouse get, smaller the square
//size =100/dist (mouseX, mouseY, x, y); //closer mouse gets, bigger the square



}

}
