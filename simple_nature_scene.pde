void setup() {
  size(400, 400);
  background(135, 206, 235); // Sky blue

  // Grass
  fill(34, 139, 34); // Green
  noStroke();
  rect(0, 300, 400, 100);

  // Sun
  fill(255, 255, 0); // Yellow
  stroke(255, 204, 0);
  strokeWeight(2);
  ellipse(350, 50, 80, 80); // Sun in the top right

  // Tree Trunk
  fill(139, 69, 19); // Brown
  stroke(100, 50, 0);
  strokeWeight(2);
  rect(150, 200, 40, 100);

  // Tree Leaves
  fill(0, 128, 0); // Dark green
  stroke(34, 139, 34);
  strokeWeight(3);
  ellipse(170, 150, 100, 100); // Large circle
  ellipse(140, 180, 60, 60); // Left smaller
  ellipse(200, 180, 60, 60); // Right smaller

  // Cloud 1
  fill(255); // White
  noStroke();
  ellipse(80, 80, 60, 40); // Left part
  ellipse(110, 80, 70, 50); // Center part
  ellipse(140, 80, 60, 40); // Right part
  
  // Cloud 2
  ellipse(260, 100, 50, 30);
  ellipse(280, 100, 60, 40);
  ellipse(300, 100, 50, 30);
  
  // Bezier curve for a wavy ground (new)
  stroke(34, 139, 34); // Green
  strokeWeight(4);
  noFill();
  bezier(50, 310, 150, 290, 250, 330, 350, 310); // Wavy ground
}
