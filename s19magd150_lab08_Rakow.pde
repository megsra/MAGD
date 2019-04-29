//Import PDF Library
import processing.pdf.*;

//start and stop saving screen
boolean recordScreen;
String fileName;
String[] headlines = {
  "Once Opon a Time.",
  "In a Far Away World.",
  "Lived a Majestic Animal.",
};

void setup(){
  surface.setTitle(" Movie Poster");
  pixelDensity(displayDensity());
  size(420, 700);
  background(255);
  fileName= "movie";
}

void draw(){
  //starts to recording
  if (recordScreen){
    beginRecord(PDF, fileName +".pdf");
  }
  
    //ends recording
    if (recordScreen){
      endRecord();
      recordScreen = false;
    }
}
  
