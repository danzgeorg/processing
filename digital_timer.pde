void setup() {
  size(400, 200);
}

void draw() {
  background(255);
  
  // Calculate elapsed time
  int seconds = frameCount / 60;
  int minutes = seconds / 60;
  int hours = minutes / 60;
  
  seconds %= 60;
  minutes %= 60;

  String timer = nf(hours, 2) + ":" + nf(minutes, 2) + ":" + nf(seconds, 2); // format so it shows 2 digits 
  
  textSize(32);
  textAlign(CENTER, CENTER);
  fill(0);
  text(timer, width / 2, height / 2);
}
