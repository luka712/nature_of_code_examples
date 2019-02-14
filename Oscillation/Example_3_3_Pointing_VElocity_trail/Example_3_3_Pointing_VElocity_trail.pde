Mover m;
int index = 0;

Attractor a;

void setup() {
  size(640,360);
  background(255);
  a = new Attractor();
  m = new Mover(4, 0,0);
}


void draw() {
  background(255);

  PVector dir = PVector.sub(new PVector(mouseX, mouseY), m.position);
  dir.normalize();

  m.applyForce(dir);
  m.update();
  m.display();

}
