int rectX, rectY;      // Position of square button
int circleX, circleY;  // Position of circle button
int rectSize = 90;     // Diameter of rect
int circleSize = 93;   // Diameter of circle
color rectColor, circleColor, baseColor;
color rectHighlight, circleHighlight;
color currentColor;
boolean rectOver = false;
boolean circleOver = false;

void setup(){
  size(420, 420);
  rectColor = color(#00FCCC); //bright cyan
  rectHighlight= color(#2EAF96);
  circleColor = color(#3BFC08); //bright green
  circleHighlight= color(#3DAD1F);
  baseColor=color(#B0B2B0);// gray
  currentColor= color(#290F46); //dark purple
  circleX = width/2+circleSize/2+10;
  circleY= height/2;
  rectX= width/2-rectSize-10;
  rectY=height/2-rectSize/5;
  ellipseMode(CENTER);
}

void draw(){
  update(mouseX, mouseY);
  background(currentColor);
  if(rectOver){
    fill(rectHighlight);
  }else{
    fill(rectColor);
  }
  rect(rectX,rectY, rectSize, rectSize);
  
  if (circleOver){
    fill(circleHighlight);
  }else{
    fill(circleColor);
  }
  ellipse(circleX, circleY, circleSize, circleSize);
}

void update(int x, int y){
  if (overCircle(circleX, circleY, circleSize)){
    circleOver= true;
    rectOver= false;
  }else if (overRect(rectX, rectY, rectSize, rectSize)){
    rectOver=true;
    circleOver=false;
  }else {
    circleOver = rectOver = false;
  }
}

void mousePressed(){
  if (circleOver){
    currentColor = circleColor;
  }
   if(circleOver){
    println("Welcome to green demension");
  }
  if (rectOver){
    currentColor = rectColor;
  }
  if(rectOver){
    println("Welcome to cyan demension");
  }
}

boolean overRect(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}

boolean overCircle(int x, int y, int diameter){
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) +sq(disY)) < diameter/2){
    return true;
  } else {
    return false;
  }
}
