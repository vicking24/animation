//victoria 
//apr 5

int n=200;
ArrayList <firework> fireworklist;
ArrayList <sprinkle> sprinklelist;

PImage circle;

void setup () {
  size (800, 800, P2D); //P2D for fixing lag
  fireworklist= new ArrayList <firework> ();
  sprinklelist= new ArrayList <sprinkle> ();

  imageMode (CENTER);
  circle=loadImage ("sprinkle_pic.png");

}



void draw () {
  background (0);
  int j=0;

  while (j< fireworklist.size() ) {
    firework f = fireworklist.get (j); //class, variable = arraylist.get (variable);
    
    if (f.alive==true){
    f.show();
    f.act();

    j=j+1;
    
    } else {
    fireworklist.remove(j); //remove the particle from the list that's out of the screen
    
    }
  }
 
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

  fireworklist.add (new firework() );


  }
