// global variables are declared first

// ball position
float xPos;
float yPos;

// peg positions
float peg1X, peg1Y;
float peg2X, peg2Y;
float peg3X, peg3Y;

// ball velocity
float vx;
float vy;

// ball size
float radius;

// peg size
float pegRadius;

// is ball in play?
boolean inPlayMode;

void setup() {
  size(500, 400);
  textSize(48);

  radius = 15;
  pegRadius = 10;

  peg1X = 250;
  peg1Y = 200;

  peg2X = 70;
  peg2Y = height - 24;

  peg3X = width - 24;
  peg3Y = 70;

  xPos = width - radius;
  yPos = height - radius;

  inPlayMode = false;
}

void mousePressed() {
  if (!inPlayMode) {
    vx = (mouseX - xPos) / 50;
    vy = (mouseY - yPos) / 50;
    inPlayMode = true;
  }
}

void draw() {
  background(255);

  drawPeg(peg1X, peg1Y);
  drawPeg(peg2X, peg2Y);
  drawPeg(peg3X, peg3Y);

  if (inPlayMode) {
    moveBall();
    bounceOffWalls();
    checkForPegCollision(peg1X, peg1Y);
    checkForPegCollision(peg2X, peg2Y);
    checkForPegCollision(peg3X, peg3Y);
  } else {
    drawBall();
    drawAimingLine();
  }
}

void moveBall() {
  xPos += vx;
  yPos += vy;
  drawBall();
}

void bounceOffWalls() {
  // check rebounds against left and right walls
  if (xPos - radius < 0 || xPos + radius > width) {
    vx = -vx;
  }
  // check rebounds against top and bottom walls
  if (yPos - radius < 0 || yPos + radius > height) {
    vy = -vy;
  }
}

void drawPeg(float x, float y) {
  fill(255, 0, 0);
  stroke(0);
  circle(x, y, 2 * pegRadius);
}

void drawAimingLine() {
  stroke(0);
  line(xPos, yPos, mouseX, mouseY);
}

void drawBall() {
  noStroke();
  fill(0, 0, 255);
  circle(xPos, yPos, 2 * radius);
}

void checkForPegCollision(float x, float y) {
  if (dist(xPos, yPos, x, y) < radius + pegRadius) {
    fill(0);
    textAlign(CENTER, CENTER);
    text("GAME OVER!", width / 2, height / 2);
    frameRate(0);
  }
}
