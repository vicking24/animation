ArrayList<Star> starList;   // lists can store many objects
int n = 500;                //this is how many objects we will have


void setup() {
  noStroke();
  size(600, 600);
  starList = new ArrayList<Star>(n);   //make the list

  // ~~~~~~~~~ Make a bunch of targets and store them in the list! ~~~~~~~~~
  int i = 0;
  while (i < n) {
    starList.add(new Star());
    i=i+1;
  }
  // ~~~~~~~~~ Done making targets! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
}


void draw() {
  background(0);
  // ~~~~~~~~~ Go through the list and tell each target to show and act ~~~~
  int i = 0;
  while (i < n) {
    Star currentStar = starList.get(i);
    currentStar.show();
    currentStar.act();
    i=i+1;
  }
  // ~~~~~~~~~ Done showing and acting each target ~~~~~~~~~~~~~~~~~~~~~~~~~
}
