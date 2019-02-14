Mover[] movers = new Mover[20];
int index = 0;

Attractor a;

void setup() {
  size(640,360);
  background(255);
  a = new Attractor();
}

void mouseClicked()
{
  Mover m = new Mover(random(1), 0, height);
  m.applyForce(new PVector(1,-1.5));
  if(index < 20)
  {
   movers[index] = m;
   index++;
  }
}

void draw() {
  background(255);

  a.display();
  


  for (int i = 0; i < index; i++) {

    movers[i].applyForce(new PVector(0,0.01));
    
    movers[i].update();
    movers[i].display();
  }

}
