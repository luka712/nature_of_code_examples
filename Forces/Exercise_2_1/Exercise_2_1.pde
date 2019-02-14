Mover mover;
float ty = 0;

void setup()
{
 size(640,360);
   mover = new Mover();
 
}

void draw()
{
 background(255);
 ty += 0.01;
  float y = map(noise(ty), 0,1,0,-0.1);
 
 mover.applyForce(new PVector(0,y));
 
  mover.update();
  mover.checkEdges();
  mover.display();
 }
