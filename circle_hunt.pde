float circleX, circleY;
float radius = 50;
boolean game_over = false;  // game state
int time_limit = 5000;    // 5 seconds
int start_time;

void setup() {
  size(400, 400);

  // random positions
  circleX = random(radius, width - radius);
  circleY = random(radius, height - radius);

  start_time = millis();
  textSize(32);
}

void draw() {
  background(0);

  // check if time is up
  if (millis() - start_time > time_limit) {
    game_over = true;
  }

  if (!game_over) {
    // check if the mouse is inside the circle
    float distance = dist(mouseX, mouseY, circleX, circleY);
    if (distance <= radius) {
      fill(255, 177, 8);
      ellipse(circleX, circleY, radius * 2, radius * 2);
      fill (255);
      textAlign(CENTER,CENTER);
      text("YOU WIN", width / 2, height / 2);
    }
  } else {
    // display game over message & reveal the circle's position
    fill(255, 177, 8);
    ellipse(circleX, circleY, radius * 2, radius * 2);
    fill(255);
      textAlign(CENTER, CENTER);
      text("GAME OVER", width / 2, height / 2);
  }
}
