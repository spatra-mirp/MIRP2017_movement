void updateBallVelocity() {
  ballVy += gravity;
  // Add control for movement keys here
}

void updateBallPosition() {
  ballX += ballVx;
  ballY += ballVy;
}

void resolveCollisions() {
  // Resolving Collisions with floor (bottom wall).
  if (ballY > displayHeight-ballRadius){
    ballY = displayHeight-ballRadius;
    ballVy *= -restitutionCoeff;
  }
  if (ballX > displayWidth){
    ballX =  displayWidth-ballRadius;
    ballVx *= -restitutionCoeff;
  }
  if (ballY < 0){
    ballY = 0;
    ballVy *= -restitutionCoeff;
  }
   if (ballX < 0){
    ballX = 0;
    ballVx *= -restitutionCoeff;
  }
  // Resolve Collisions with all other walls.
}