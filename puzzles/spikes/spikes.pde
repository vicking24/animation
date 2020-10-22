ArrayList<Spike> spikeList;   // lists can store many objects
int n = 30;                //this is how many objects we will have

void setup() {
  stroke(0);
  size(600, 600);
  spikeList = new ArrayList<Spike>(n);   //make the list

  // ~~~~~~~~~ Make a bunch of targets and store them in the list! ~~~~~~~~~
  int i = 0;
  while (i < n) {
    spikeList.add(new Spike());
    i=i+1;
  }
  // ~~~~~~~~~ Done making targets! ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
}


void draw() {
  //background(0);
  // ~~~~~~~~~ Go through the list and tell each target to show and act ~~~~
  int i = 0;
  while (i < n) {
    Spike currentSpike = spikeList.get(i);
    currentSpike.show();
    currentSpike.act();
    i=i+1;
  }
}
