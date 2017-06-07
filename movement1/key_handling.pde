void keyPressed() {
  if (key == UP)       up = true;
  if (key == LEFT)     left = true;
  if (key == RIGHT)    right = true;
}

void keyReleased() {
  if (key == UP)       up = false;
  if (key == LEFT)     left = false;
  if (key == RIGHT)    right = false;
}

float radiusIncrement = 0.5;


void movekeys() {
  if (up){
    ballY = ballY - 1;
    ballVy = ballVy -1;
  }
  if (left){
    ballX = ballX - 1;
    ballVx = ballVx - 1;
  }
  if (right){
    ballX  = ballX + 1;
    ballVx = ballVx +1;
  }
}