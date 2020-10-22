//victoria 
//apr 3

int n=200;
ArrayList <sprinkle> sprinklelist;

PImage circle;

void setup () {
  size (800, 800, P2D); //P2D for fixing lag
  sprinklelist= new ArrayList <sprinkle> ();

  imageMode (CENTER);
  circle=loadImage ("sprinkle_pic.png");




//  while (i<n) {
//    sprinklelist.add (new sprinkle() );

//    i=i+1;
//  }
}



void draw () {
  background (0);
  int i=0;

  while (i< sprinklelist.size() ) {
    sprinkle s = sprinklelist.get (i); //class, variable = arraylist.get (variable);
    
    if (s.alive==true){
    s.show();
    s.act();

    i=i+1;
    
    } else {
    sprinklelist.remove(i); //remove the particle from the list that's out of the screen
    
    }
  }
 
  
  
}




void mousePressed() {
  
  int i=0;
  
  while (i<100){
  sprinklelist.add (new sprinkle() );
  i=i+1;

  }






}
