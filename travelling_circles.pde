// Declare variables for circle positions and colors
float x1, y1;
float x2, y2;
float x3, y3;
float x4, y4;

void setup() {
  // Set up the canvas size
  size(400, 400);
  x1 = width / 2;
  y1 = height / 2;
  x2 = width / 2;
  y2 = height / 2;
  x3 = width / 2;
  y3 = height / 2;
  x4 = width / 2;
  y4 = height / 2;
}

void draw() {
  background(255);
  
  fill(0);
  ellipse(x1, y1, 60, 60);
  x1 -= 1;
  y1 -= 1;
  
  fill(0);
  ellipse(x2, y2, 60, 60);
  x2 += 1;
  y2 -= 1;
  
  fill(0);
  ellipse(x3, y3, 60, 60);
  x3 -= 1;
  y3 += 1;
  
  fill(0);
  ellipse(x4, y4, 60, 60);
  x4 += 1;
  y4 += 1;
}
