//PANTALLA 0___________________________________________________________________________

class Inicio{
PImage inicio;


Inicio(){
inicio = loadImage("Inicio.png");
}

void display(){

fill(#B38393);
textSize(18);
text("<---Click para continuar--->>", 150,605);

for (int i = 0; i < 150; i++) {
    float x = random(width);
    float y = random(height);
    color c = inicio.get(int(x), int(y));
    fill(c, 70);
    noStroke();
    ellipse(x, y, 15, 15);
  }

if (mousePressed == false){
    }
    else {
    pantalla = 1;
    }
}
}
