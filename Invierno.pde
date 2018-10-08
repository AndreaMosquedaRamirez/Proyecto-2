//PANTALLA 4___________________________________________________________________________

class Invierno{
PImage m;
PImage f;

Invierno(){
m = loadImage("MONTAÑAS_INVIERNO.png");
f = loadImage("INVIERNO.png");
}

void display(){
background(f);
image(m, 125, 199);

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
     
     case 'n':
      pantalla = 8;
      
     
      LunaI p = new LunaI(mouseX,mouseY);
      lunasi.add(p);
     break;

}
}
}
}


//NIEVE____________________________________________________________________

class Nieve {

  Body body;
  float r = random(0.05,0.10);
  float w = random (0.05, 1);
  float h = random (0.05, 1);

  boolean delete = false;

  Nieve(float w_, float h_, float r_) {
    w = w_;
    h = h_;
    r = r_;
  
    makeBody(w, h, r);
    body.setUserData(this);
  }

  void killBody() {
    box2d.destroyBody(body);
  }

  void delete() {
    delete = true;
  }

  boolean done() {
    Vec2 pos = box2d.getBodyPixelCoord(body);
    if (pos.y > height+r*2 || delete) {
      killBody();
      return true;
    }
    return false;
  }
  // 
  void display() {
    Vec2 pos = box2d.getBodyPixelCoord(body);
    pushMatrix();
    translate(pos.x, pos.y);
    fill(255);
    noStroke();
    ellipse(w,h,r,r);
    popMatrix();
  }

  
  void makeBody(float w, float h, float r) {
    BodyDef bd = new BodyDef();
    bd.position = box2d.coordPixelsToWorld(w, h);
    bd.type = BodyType.DYNAMIC;
    body = box2d.createBody(bd);

    CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);

    FixtureDef fd = new FixtureDef();
    fd.shape = cs;
    fd.density = 0.00005;
    fd.friction = 0.5;
    fd.restitution = 0.0005;

    body.createFixture(fd);
    body.setAngularVelocity(random(-1,-1));
  }
}


//AGUA TOPE___________________________________________________________________________________________

class Agua{
  PImage a;
  float x;
  float y;
  float w;
  float h;
  Body b;
  
  Agua(float x_, float y_, float w_, float h_){
    this.x = x_;
    this.y = y_;
    this.w = w_;
    this.h = h_;
    a = loadImage("AGUA_INVIERNO.png");
    
    BodyDef bd = new BodyDef();
    bd.type = BodyType.STATIC;
    bd.position.set(box2d.coordPixelsToWorld(x_,y_));    
    b = box2d.createBody(bd);
    
    
    PolygonShape ps = new PolygonShape();
    float anchoAjustado = box2d.scalarPixelsToWorld(w_/2);
    float altoAjustado = box2d.scalarPixelsToWorld(h_/2);
    
    ps.setAsBox(anchoAjustado,altoAjustado);
    
    b.createFixture(ps,1);
  }
  
  void display(){
    image(a, 125, 411);
  }
}
