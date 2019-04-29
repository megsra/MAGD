float w=40;
float h=40;
int[] values ={ 9, -4, 362, 21 };  
int d = max(values);
int i = min(values);
int purple;
int blue;
int red;
void setup(){
  size(420,420);
  surface.setResizable(true);
  background(32);
  frameRate(20);
}
void draw(){
  ellipse(mouseX,mouseY,w,h);
  println("Mouse postion:("+mouseX+","+mouseY+")");
  println("Frame Rate: "+frameRate);
  red = (red+1)%256;
  blue=(blue+2)%256;
  purple=(purple+5-1)%256;
  fill(purple,blue,red);
  println("constrain -40: " + constrain(-40, 0, width));
println("constrain 420: " + constrain(460, 0, height)); 
}
