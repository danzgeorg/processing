float xPosition;  // horizontal starting position on x axis
float xVelocity;  // horizontal speed in x direction
float radius;     // radius of the ball
float yPosition;  // vertical starting position on y axis
float yVelocity; // vertical speed in y direction

void setup() {
  size(400, 300);
  fill(#F70CB1);  // colour for the ball

  xPosition = width / 2;
  xVelocity = -2; //x-direction to -2 to move lft
  radius = 50;
  yPosition = height /2;
  yVelocity = -1; // y-velocity to -2 to move upwards
}

void draw() {
  background(#0C062E);         // dark blue

  // update the x & y position of the ball
  xPosition += xVelocity;
  yPosition += yVelocity;

  // draw the ball at the updated position
  ellipse(xPosition, yPosition, radius * 2, radius * 2);

  // check for collision with the left or right edge of the window
  if (xPosition - radius <= 0 || xPosition + radius >= width) {
    xVelocity = -xVelocity;  // bounce off left or right edge
  }
  // check for collision with the top or bottom edge of the window
  if (yPosition - radius <= 0 || yPosition + radius >= height) {
    yVelocity = -yVelocity;  // bounce off bottom or top edge
  }
}
