//PANTALLA 2___________________________________________________________________________

class Verano{
PImage m;
PImage a;
PImage nb;
PImage f;

Verano(){
m = loadImage("MONTAÑAS_VERANO.png");
a = loadImage("AGUA_VERANO.png");
nb = loadImage("NUBES.png");
f = loadImage("VERANO.png");
}

void display(){
background(f);
image(m, 125, 199);
image(a, 125, 411);
image(nb, 117, 55);

if (keyPressed){
    switch (key){
     case 'p':
      pantalla = 1;
     break;
     
     case 'o':
      pantalla = 3;
     break;
     
     case 'i':
      pantalla = 4;
     break;
     
     case 'n':
      pantalla = 6;
      
      LunaV p = new LunaV(mouseX,mouseY);
      lunasv.add(p);
     break;

}
}
}
}

//LLUVIA____________________________________________________________________

class Lluvia {

  Body body;
  float x;
  float y;
  float z;
  float len;
  float yspeed;
  
  boolean delete = false;

  Lluvia(float x, float y) {
    x  = random(120, 450);
    y  = random(140, 300);
    z  = random(0, 10);
    len = random (0,15);
    yspeed  = random (2,10);
    makeBody(new Vec2(x,y),z,len);
  }

   void killBody() {
    box2d.destroyBody(body);
  }

   void delete() {
    delete = true;
  }


  boolean done() {
    Vec2 pos = box2d.getBodyPixelCoord(body);  
    if (pos.y > height-y*3 || delete) {
      killBody();
      return true;
    }
    return false;
  }

  void attract(float x,float y) {
    Vec2 worldTarget = box2d.coordPixelsToWorld(x,y);   
    Vec2 bodyVec = body.getWorldCenter();
    worldTarget.subLocal(bodyVec);
    worldTarget.normalize();
    worldTarget.mulLocal((float) 50);
    body.applyForce(worldTarget, bodyVec);
  }
  
  void display() {
    Vec2 pos = box2d.getBodyPixelCoord(body);
    y = y + yspeed;
    float grav = map(z, 0, 15, 0, 1);
    yspeed = yspeed + grav;
    
    pushMatrix();
    translate(pos.x,pos.y);
    strokeWeight(random(0.05,1.5));
    stroke(0,0,255);
    line(x, y, x, y+len);
    popMatrix();
  }

  void makeBody(Vec2 center, float w_, float h_) {
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w_/2);
    float box2dH = box2d.scalarPixelsToWorld(h_/2);
    sd.setAsBox(box2dW, box2dH);

    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    fd.density = 0.005;
    fd.friction = 7;
    fd.restitution = 0.05;

    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(center));

    body = box2d.createBody(bd);
    body.createFixture(fd);
    
    body.setLinearVelocity(new Vec2(random(-1,2),random(-1,2)));
  }
}
