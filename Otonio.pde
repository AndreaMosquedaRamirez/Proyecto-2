//PANTALLA 3___________________________________________________________________________

class Otonio{
PImage m;
PImage a;
PImage f;

Otonio(){
m = loadImage("MONTAÑAS_OTOÑO.png");
a = loadImage("AGUA_OTOÑO.png");
f = loadImage("OTOÑO.png");
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
     
     case 'i':
      pantalla = 4;
     break;
     
     case 'n':
      pantalla = 7;
      
      LunaO p = new LunaO(mouseX,mouseY);
      lunaso.add(p);
     break;

}
}
}
}
