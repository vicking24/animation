ArrayList<Ripple> rippleList;   // lists can store many objects
int n = 100;                    //this is how many objects we will have


void setup() {
  noFill();
  size(600, 600);
  rippleList = new ArrayList<Ripple>(n);   //make the list

  // ~~~~~~~~~ Make a bunch of targets and store them in the list! ~~~~~~~~~
  int i = 0;
  while (i < n) {
    rippleList.add(new Ripple());
    i=i+1;
  }
  // ~~~~~~~~~ Done making targets! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
}


void draw() {
  background(0);
  // ~~~~~~~~~ Go through the list and tell each target to show and act ~~~~
  int i = 0;
  while (i < n) {
    Ripple currentRipple = rippleList.get(i);
    currentRipple.show();
    currentRipple.act();
    i=i+1;
  }
  // ~~~~~~~~~ Done showing and acting each target ~~~~~~~~~~~~~~~~~~~~~~~~~
}
