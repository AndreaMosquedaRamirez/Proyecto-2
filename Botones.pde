class Botones{
int w;
int h;

Botones(){
w = 20;
h =20;
}

void display(){
  fill(255,0,255);
  text("Presiona", 30, 50);
  
  noStroke();
  fill(#E7C4A3);
  rect (50, 70, w, h);
  text("P", 75, 85);
       strokeWeight(3);
       stroke(255);
       rect (50, 70, 20, 20);
  
  noStroke();
  fill(#B38393);
  rect (50, 95, w, h);
  text("V", 75, 110);
       strokeWeight(3);
       stroke(255);
       rect (50, 95, 20, 20);
    
 
  noStroke();
  fill(#947E37);
  rect (50, 120, w, h);
  text("O", 75, 135);
       strokeWeight(3);
       stroke(255);
       rect (50, 120, 20, 20);
  
  
  noStroke();
  fill(#35414E);
  rect (50, 145, w, h);
  text("I", 75, 160);
       strokeWeight(3);
       stroke(255);
       rect (50, 145, 20, 20);
  
  noStroke();
  fill(0);
  rect (50, 170, w, h);
  text("N", 75, 185);
       strokeWeight(3);
       stroke(255);
       rect (50, 170, 20, 20);
}
}
