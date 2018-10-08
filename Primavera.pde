//PANTALLA 1___________________________________________________________________________

class Primavera{
PImage m;
PImage a;
PImage f;

Primavera(){
m = loadImage("MONTAÑAS_PRIMAVERA.png");
a = loadImage("AGUA_PRIMAVERA.png");
f = loadImage("PRIMAVERA.png");
}

void display(){
background(f);
image(m, 125, 199);
image(a, 125, 411);

if (keyPressed){
    switch (key){
     case 'v':
      pantalla = 2;
     break;
     
     case 'o':
      pantalla = 3;
     break;
     
     case 'i':
      pantalla = 4;
     break;
     
     case 'n':
      pantalla = 5;
     
      LunaP p = new LunaP(mouseX,mouseY);
      lunasp.add(p);
    
     break;
     

}
}
}
}
