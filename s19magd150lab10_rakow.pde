
Planet sun;



PImage sunTexture;
PImage[] textures = new PImage[9];

void setup(){
  size(720,720, P3D);
  sunTexture=loadImage("sun.jpg");
  textures[0] = loadImage("earth.jpg");
  textures[1] = loadImage("mars.jpg");
  textures[2] = loadImage("pluto.jpg");
  textures[3] = loadImage("neptune.jpg");
  textures[4] = loadImage("saturn.jpg");
  textures[5] = loadImage("uranus.jpg");
  textures[6] = loadImage("venus.jpg");
  textures[7] = loadImage("mercur.jpg");
  textures[8] = loadImage("jupiter.jpg");
  sun= new Planet (50, 0 , 0, sunTexture);
  sun.spawnMoon(7, 1);
} 

void draw(){
  background(0);
  int z= 75;
  camera(0,0,(height/2)/tan(PI/6),0,0,0,0,1,0);
  pointLight(255,255,255,-50,-50,z);
  pointLight(255,255,255,50,-50,z);
  pointLight(255,255,255,50,50,z);
  pointLight(255,255,255,-50,50,z);
  directionalLight(127, 127, 127, 0, 0, -1);



  sun.show();
  sun.orbit();
  
}
