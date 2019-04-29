boolean sauce = false;

//pizza// 
int a = -1; 
int b = 0; 
int c = 510; 
int d = 120;

int peperoni = color(255,200,200); 

void setup() { 
  size(500, 500);
}

void draw() { 
  if (sauce) { 
    //pizza//
    background(127, 0, 0); 
    stroke(0);
  } else {
    //cheese// 
    background(255,204,0); stroke(255);
    
     fill(249, 148, 7) ; 
  rect(a, b, c, d);
  }
}
void keyPressed(){
    //adding peperoni
    if (keyCode == UP)  { 
      fill(peperoni);
       ellipse(45, 46, 55, 55);   
    }
  }


//organe box on top to add cheese or take off cheese
void mousePressed() { 
  if (mouseX > a && mouseX < a+c && mouseY > b && mouseY < b+d) { 
    sauce = !sauce;
  }
}
