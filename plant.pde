class Planet{
  float radius;
  float angle;
  float dis;
  Planet[] planets;
  float orbitSpeed;
  PVector v;
  
  PShape globe;
  
  
  Planet(float r, float d,float o, PImage img){
    v = PVector.random3D();
    
    radius = r;
    dis= d;
    v.mult(dis);
    angle=random(TWO_PI);
    orbitSpeed = o;
    
    noStroke();
    noFill();
    globe= createShape(SPHERE,radius);
    globe.setTexture(img);
  }
  
  void orbit(){
    angle=angle +orbitSpeed;
    if(planets != null){
        for (int i = 0; i < planets.length; i++){
          planets[i].orbit();
        }
    }
  }
  void spawnMoon(int total, int level){
    planets = new Planet[total];
    for (int i = 0; i < planets.length; i++){
      float r = radius/(level*2);
      float d = random((radius + r),(radius+r)*2);
      float o =random(-0.01, 0.1);
      int index = int(random(0,textures.length));
      planets[i] = new Planet(r,d, o, textures[index]);
      if (level <0){
        int num=1;
      planets[i].spawnMoon(num, level+1);
      }
    }
  }
    
  void show(){
    pushMatrix();
    noStroke();
    fill(255);
    PVector v2= new PVector(1,0,1);
    PVector p = v.cross(v2);
    rotate(angle,p.x,p.y,p.z);
    translate(v.x,v.y,v.z);
    shape(globe);
    
    if(planets != null){
    for (int i = 0; i < planets.length; i++){
      planets[i].show();
    }
    }
    popMatrix();
  }
}
