PVector petals, center, framerate;
float zoom = 1;

//PVector mouse = new PVector(mouseX, mouseY);

void setup(){
  size(400, 400);
  smooth();
  noStroke();
  petals= new PVector(0, -40);
  center= new PVector(0,0);
  PVector mouse = new PVector(mouseX, mouseY);
  mouse.sub(center);
}

void draw(){
  background(255);
  scale(zoom);
  //center 
  translate(width/2,height/2);
  PVector mouse = new PVector(mouseX, mouseY);
  //mouse.sub(center);
  //five petals
  fill(#c6ff89); // green
  for (int i=0; i<5; i++){
  ellipse(petals.x, petals.y,mouse.x, mouse.y);
  rotate(radians(72));
  }
  //center of flower
  fill(#fff9bb); // yellow
  ellipse(center.x,center.y,mouse.x,mouse.y);
}
