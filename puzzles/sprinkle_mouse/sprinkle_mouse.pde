//victoria 
//apr 3

int n=200;
ArrayList <sprinkle> sprinklelist;

PImage circle;

void setup () {
  size (800, 800);
  sprinklelist= new ArrayList <sprinkle> ();

  int i=0;
  imageMode (CENTER);
  circle=loadImage ("sprinkle_pic.png");




  while (i<n) {
    sprinklelist.add (new sprinkle() );

    i=i+1;
  }
}



void draw () {
  background (0);
  int i=0;

  while (i<n) {
    sprinkle s = sprinklelist.get (i); //class, variable = arraylist.get (variable);
    s.show();
    s.act();

    i=i+1;
  }
}
