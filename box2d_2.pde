import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;

ArrayList<Lluvia> lluvias;
ArrayList<Nieve> nieves;
ArrayList<LunaP> lunasp;
ArrayList<LunaV> lunasv;
ArrayList<LunaO> lunaso;
ArrayList<LunaI> lunasi;

int pantalla;

Inicio inicio;
Botones botones;
Agua agua;

Primavera primavera;
Verano verano;
Otonio otonio;
Invierno invierno;

NochePrimavera nocheprimavera;
NocheVerano nocheverano;
NocheOtonio nocheotonio;
NocheInvierno nocheinvierno;



void setup(){
size(550, 671);
  inicio = new Inicio();
  botones = new Botones();
  
  primavera = new Primavera();
  verano = new Verano();
  otonio = new Otonio();
  invierno = new Invierno(); 
  
  
  nocheprimavera = new NochePrimavera();
  nocheverano = new NocheVerano();
  nocheotonio = new NocheOtonio();
  nocheinvierno = new NocheInvierno(); 


  box2d = new Box2DProcessing(this);
  box2d.createWorld();

//LLUVIA_________________________________________________________________________
  pushMatrix();
  box2d.setGravity(0, -20); 
  lluvias = new ArrayList<Lluvia>();
  popMatrix();
//________________________________________________________________________________


//NIEVE_________________________________________________________________________
  pushMatrix();
 
  box2d.setGravity(0, -20);
  box2d.listenForCollisions();
  nieves = new ArrayList<Nieve>();
 
  popMatrix();  
//________________________________________________________________________________


//AGUA TOPE_______________________________________________________________________
  agua = new Agua(140,699, 195, 613);
//________________________________________________________________________________


//LUNA PRIMAVERA__________________________________________________________________
  
  pushMatrix();
  box2d.setGravity(0,10);
  lunasp = new ArrayList<LunaP>();
  popMatrix();
  
//________________________________________________________________________________


//LUNA VERANO__________________________________________________________________
  
  pushMatrix();
  box2d.setGravity(0,10);
  lunasv = new ArrayList<LunaV>();
  popMatrix();
  
//________________________________________________________________________________


//LUNA OTOÑO__________________________________________________________________
  
  pushMatrix();
  box2d.setGravity(0,10);
  lunaso = new ArrayList<LunaO>();
  popMatrix();
  
//________________________________________________________________________________


//LUNA INVIERNO__________________________________________________________________
  
  pushMatrix();
  box2d.setGravity(0,10);
  lunasi = new ArrayList<LunaI>();
  popMatrix();
  
//________________________________________________________________________________

}

void draw(){
switch(pantalla){
    case 0:
     inicio. display();
     break;
     
     case 1:
      primavera. display ();
      botones.display();
     break;
     
     case 2:
      verano. display();
      botones.display();
      
      //LLUVIA_________________________________________________________________
      pushMatrix();
      box2d.step();
      if (random(2) < 15) {
        Lluvia p = new Lluvia(random(width),5);
        lluvias.add(p);
      }
    
      for (Lluvia b: lluvias) {
        b.display();
      }
  
      for (int i = lluvias.size()-1; i >= 0; i--) {
        Lluvia b = lluvias.get(i);
        if (b.done()) {
          lluvias.remove(i);
        }
      }
      popMatrix();
      //_______________________________________________________________________
      
      
     break;
    
     case 3:
      otonio. display();
      botones.display();
     break;
     
     case 4:
      invierno. display ();
      botones.display();
      
      //NIEVE_________________________________________________________________
      pushMatrix();
      
      if (random(1) < 8) {
      float sz = random(4, 8);
      nieves.add(new Nieve(random(width), random(height/2), sz));
      }
      
      box2d.step();
      
      for (int i = nieves.size()-1; i >= 0; i--) {
      Nieve p = nieves.get(i);
      p.display();
      
      if (p.done()) {
      nieves.remove(i);
      }
      }
      
      
      popMatrix();
      //_______________________________________________________________________
      
      //AGUA TOPE______________________________________________________________
      
      box2d.step();
      agua.display();
  
      //_______________________________________________________________________
      
     break;
     
      case 5:
      nocheprimavera. display ();
      botones.display();
      
      //LUNA PRIMAVERA__________________________________________________________________________________
      
      pushMatrix();
      box2d.step();
      
      for (LunaP b: lunasp) {
        b.display();
      } 
      popMatrix();
      
      //_______________________________________________________________________________________________
      
      break;
      
      case 6:
      nocheverano. display ();
      botones.display();
      
      //LUNA VERANO__________________________________________________________________________________
      
      pushMatrix();
      box2d.step();
      for (LunaV b: lunasv) {
        b.display();
      }
      popMatrix();
      
      //_______________________________________________________________________________________________
   
      break;
      
      case 7:
      nocheotonio. display ();
      botones.display();
      
      //LUNA OTOÑO__________________________________________________________________________________
      
      pushMatrix();
      box2d.step();
      for (LunaO b: lunaso) {
        b.display();
      }
      popMatrix();
      
      //_______________________________________________________________________________________________
   
      
      break;
      
      case 8:
      nocheinvierno. display ();
      botones.display();
      
      //LUNA INVIERNO__________________________________________________________________________________
      
      pushMatrix();
      box2d.step();
      for (LunaI b: lunasi) {
        b.display();
      }
      popMatrix();
      
      //_______________________________________________________________________________________________
   
      
      break;
}
}

  /* Collision event functions!
  void beginContact(Contact cp) {
    // Get both shapes
    Fixture f1 = cp.getFixtureA();
    Fixture f2 = cp.getFixtureB();
    // Get both bodies
    Body b1 = f1.getBody();
    Body b2 = f2.getBody();
  
    // Get our objects that reference these bodies
    Object o1 = b1.getUserData();
    Object o2 = b2.getUserData();
  
    if (o1.getClass() == Nieve.class && o2.getClass() == Nieve.class) {
      Nieve p1 = (Nieve) o1;
      p1.delete();
      Nieve p2 = (Nieve) o2;
      p2.delete();
    }
  
    if (o1.getClass() == Agua.class) {
      Nieve p = (Nieve) o2;
    }
    if (o2.getClass() == Agua.class) {
      Nieve p = (Nieve) o1;
    }
  
  
  }

  // Objects stop touching each other
  void endContact(Contact cp) {
  }
  */


 
     

      
      
      
