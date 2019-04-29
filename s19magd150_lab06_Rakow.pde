pong Ball;
pong paddle;
boolean upL, downL, upR, downR;

void setup(){
  size(500,500);
  background(0);
  Ball = new pong();
  paddle = new pong();
}

void draw(){
  background(0);
  Ball.moveCircle();
  Ball.bounce();
  Ball.circledisplay();
  paddle.paddledisplay();
  paddle.movePaddle();
  paddle.contactPaddle();
  paddle.keyPressed();
  paddle.keyReleased();
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
