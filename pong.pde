class pong{
   int ballx, bally, ballw, ballh, speedX, speedY;
   boolean upL, downL, upR, downR;
   int paddleXL,  paddleYL,  paddleW,  paddleH, paddleS, paddleXR,  paddleYR;
   
  pong(){
    //ball for game
    ballx = width/2;
    bally = height/2;
    ballw=50;
    ballh=50;
    speedX=2;
    speedY=3;
    //paddle left side of game
    paddleXL = 30;
    paddleYL = height/2;
    paddleW = 30;
    paddleH= 100;
    paddleS= 8;
     //paddle right side of game
    paddleXR = width-30;
    paddleYR = height/2;
  }

void paddledisplay(){
  rectMode(CENTER);
  fill(255);
  rect(paddleXL, paddleYL, paddleW,paddleH);
  rect(paddleXR, paddleYR, paddleW, paddleH);
}
void circledisplay(){
  fill(255,0,0);
  ellipse(ballx, bally, ballw, ballh);
}

void movePaddle(){
  //move paddle up and down 
  if(upL = true){
    paddleYL = paddleYL - paddleS;
  }
  if (downL = true){
    paddleYL = paddleYL + paddleS;
  }
  if(upL = true){
    paddleYR = paddleYR - paddleS;
  }
  if (downL = true){
    paddleYR = paddleYR + paddleS;
  }
}
void contactPaddle(){
  //when ball hits paddle bounce
  if(ballx - ballw/2 < paddleXL + paddleW/2 && bally -ballh/2< paddleYL + paddleH/2 && bally + ballh/2 > paddleYL- paddleH/2){
    speedX = -speedX;
  }
  else if(ballx + ballw/2 < paddleXR + paddleW/2 && bally -ballh/2< paddleYR + paddleH/2 && bally + ballh/2 > paddleYR- paddleH/2){
    speedX = -speedX;
  }
}

void moveCircle(){
  ballx= ballx + speedX;
  bally=bally + speedY;
}

void bounce(){
  //ball bounce off wall 
  if (ballx > width - ballw/2){
    speedX = -speedX;
  } else if (ballx<0 + ballw/2){
    speedX = -speedX;
  }
  
  if (bally > height - ballh/2){
    speedY = -speedY;
  } else if ( bally <0 + ballh/2){
    speedY = -speedY;
  }
}
void keyPressed() {
  if(key == 'w' || key == 'W'){
    upL = true;
  }
  if(key == 's' || key == 'S'){
    downL = true;
  }
   if(keyCode == UP || key == 'W'){
    upR = true;
  }
  if(keyCode == DOWN || key == 'S'){
    downR = true;
  }
}

void keyReleased(){
  if(key == 'w' || key == 'W'){
    upL = false;
  }
  if(key == 's' || key == 'S'){
    downL = false;
  }
  if(keyCode == UP || key == 'W'){
    upR = false;
  }
  if(keyCode == DOWN || key == 'S'){
    downR = false;
  }
}
}
