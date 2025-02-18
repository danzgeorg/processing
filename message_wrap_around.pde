float xPos;
float vx;
String message;

void setup() {
  size(600, 100);
  fill(255, 177, 8);
  textSize(48);

  xPos = width;
  vx = -2;       // Set speed in x-direction to -2 (moving left)
  message = "The next station is Angel...";
}

void draw() {
  background(64);

  xPos = xPos + vx;
  
  text(message, xPos, (height/2) + 20);
  if (xPos < -textWidth(message)) { // Check if the message is completely off the screen
    xPos = width;
  }
}
