//PANTALLA 5___________________________________________________________________________

class NochePrimavera{
PImage m;
PImage a;
PImage f;

NochePrimavera(){
m = loadImage("MONTAÑAS_PRIMAVERA.png");
a = loadImage("AGUA_PRIMAVERA.png");
f = loadImage("NOCHE.png");

}

void display(){
background(f);
image(m, 125, 199);
image(a, 125, 411);


if (keyPressed){
    switch (key){
     case 'p':
      pantalla = 1;
     break; 
      
     case 'v':
      pantalla = 2;
     break;
     
     case 'o':
      pantalla = 3;
     break;
     
     case 'i':
      pantalla = 4;
     break;

}
}
}
}

//_____________________________________________________________________________________________

//LUNA_________________________________________________________________________________________

class LunaP {
  
  Body body;
  
  PImage l;
  float w;
  float h;

  LunaP(float x, float y) {
    w = 128;
    h = 128;
    l = loadImage("LUNA_PRIMAVERA.png");
    makeBody(new Vec2(x, y), w, h);
  }
 
  void display() {
    Vec2 pos = box2d.getBodyPixelCoord(body);
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    image(l,0,0);
    popMatrix();
  }

  void makeBody(Vec2 center, float w_, float h_) {
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w_/2);
    float box2dH = box2d.scalarPixelsToWorld(h_/2);
    sd.setAsBox(box2dW, box2dH);
    
    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    fd.density = 1;
    fd.friction = 1;
    fd.restitution = 1;
    
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(center));
    body = box2d.createBody(bd);
    body.createFixture(fd);
    body.setLinearVelocity(new Vec2(1,1));
  }
}




//PANTALLA 6___________________________________________________________________________

class NocheVerano{
PImage m;
PImage a;
PImage f;

NocheVerano(){
m = loadImage("MONTAÑAS_VERANO.png");
a = loadImage("AGUA_VERANO.png");
f = loadImage("NOCHE.png");
}

void display(){
background(f);
image(m, 125, 199);
image(a, 125, 411);

if (keyPressed){
    switch (key){
     case 'p':
      pantalla = 1;
     break; 
      
     case 'v':
      pantalla = 2;
     break;
     
     case 'o':
      pantalla = 3;
     break;
     
     case 'i':
      pantalla = 4;
     break;

}
}
}
}

//_____________________________________________________________________________________________

//LUNA_________________________________________________________________________________________

class LunaV {
  
  Body body;
  
  PImage l;
  float w;
  float h;

  LunaV(float x, float y) {
    w = 128;
    h = 128;
    l = loadImage("LUNA_VERANO.png");
    makeBody(new Vec2(x, y), w, h);
  }
 
  void display() {
    Vec2 pos = box2d.getBodyPixelCoord(body);
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    image(l, 0, 0);
    popMatrix();
  }

  void makeBody(Vec2 center, float w_, float h_) {
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w_/2);
    float box2dH = box2d.scalarPixelsToWorld(h_/2);
    sd.setAsBox(box2dW, box2dH);
    
    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    fd.density = 1;
    fd.friction = 1;
    fd.restitution = 1;
    
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(center));
    body = box2d.createBody(bd);
    body.createFixture(fd);
    body.setLinearVelocity(new Vec2(1,1));
  }
}





//PANTALLA 7___________________________________________________________________________

class NocheOtonio{
PImage m;
PImage a;
PImage f;

NocheOtonio(){
m = loadImage("MONTAÑAS_OTOÑO.png");
a = loadImage("AGUA_OTOÑO.png");
f = loadImage("NOCHE.png");
}

void display(){
background(f);
image(m, 125, 199);
image(a, 125, 411);

if (keyPressed){
    switch (key){
     case 'p':
      pantalla = 1;
     break; 
      
     case 'v':
      pantalla = 2;
     break;
     
     case 'o':
      pantalla = 3;
     break;
     
     case 'i':
      pantalla = 4;
     break;

}
}
}
}

//_____________________________________________________________________________________________


//LUNA_________________________________________________________________________________________

class LunaO {
  
  Body body;
  
  PImage l;
  float w;
  float h;

  LunaO(float x, float y) {
    w = 128;
    h = 128;
    l = loadImage("LUNA_OTOÑO.png");
    makeBody(new Vec2(x, y), w, h);
  }
 
  void display() {
    Vec2 pos = box2d.getBodyPixelCoord(body);
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    image(l, 0, 0);
    popMatrix();
  }

  void makeBody(Vec2 center, float w_, float h_) {
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w_/2);
    float box2dH = box2d.scalarPixelsToWorld(h_/2);
    sd.setAsBox(box2dW, box2dH);
    
    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    fd.density = 1;
    fd.friction = 1;
    fd.restitution = 1;
    
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(center));
    body = box2d.createBody(bd);
    body.createFixture(fd);
    body.setLinearVelocity(new Vec2(1,1));
  }
}


//PANTALLA 8___________________________________________________________________________

class NocheInvierno{
PImage m;
PImage a;
PImage f;

NocheInvierno(){
m = loadImage("MONTAÑAS_INVIERNO.png");
a = loadImage("AGUA_INVIERNO.png");
f = loadImage("NOCHE.png");
}

void display(){
background(f);
image(m, 125, 199);
image(a, 125, 411);

if (keyPressed){
    switch (key){
     case 'p':
      pantalla = 1;
     break; 
      
     case 'v':
      pantalla = 2;
     break;
     
     case 'o':
      pantalla = 3;
     break;
     
     case 'i':
      pantalla = 4;
     break;

}
}
}
}

//_____________________________________________________________________________________________

//LUNA_________________________________________________________________________________________

class LunaI {
  
  Body body;
  
  PImage l;
  float w;
  float h;

  LunaI(float x, float y) {
    w = 128;
    h = 128;
    l = loadImage("LUNA_INVIERNO.png");
    makeBody(new Vec2(x, y), w, h);
  }
 
  void display() {
    Vec2 pos = box2d.getBodyPixelCoord(body);
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    image(l,0,0);
    popMatrix();
  }

  void makeBody(Vec2 center, float w_, float h_) {
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w_/2);
    float box2dH = box2d.scalarPixelsToWorld(h_/2);
    sd.setAsBox(box2dW, box2dH);
    
    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    fd.density = 1;
    fd.friction = 1;
    fd.restitution = 1;
    
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(center));
    body = box2d.createBody(bd);
    body.createFixture(fd);
    body.setLinearVelocity(new Vec2(1,1));
  }
}
