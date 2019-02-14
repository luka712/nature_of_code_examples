Mover[] movers = new Mover[100];
float ty = 0;

void setup()
{
 size(640,360);
 for(int i = 0; i < movers.length;i++)
 {
   movers[i] = new Mover(random(0.1,5), 0,0);
 } 
}

void draw()
{
 background(255);
 
 PVector wind = new PVector(0.01,0);
 PVector gravity = new PVector(0,0.1);
 
 for(Mover m : movers)
 {
   float c = 0.01;
   PVector friction = m.velocity.get();
   friction.mult(-1);
   friction.normalize();
   friction.mult(c);
   
   m.applyForce(friction);
    m.applyForce(wind);
    m.applyForce(gravity);
 
    m.update();
    m.checkEdges();
    m.display();
 }
 

 }
