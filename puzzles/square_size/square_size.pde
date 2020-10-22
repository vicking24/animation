//victoria
//apr 1

int n=500;
ArrayList <square> squarelist;


void setup () {
  size (800, 800);
  squarelist= new ArrayList <square> ();
  
  int i=0;
  
  while (i<n) {
  squarelist.add (new square() );

  i=i+1;
  
  }
  



}



void draw () {
background (0);
int i=0;

while (i<n) {
 square s = squarelist.get (i); //class, variable = arraylist.get (variable);
 s.show();
 s.act();
 
  i=i+1;

} 


}
