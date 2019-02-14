Mover[] movers = new Mover[100];
Liquid liquid;
float ty = 0;

void setup()
{
 size(640,360);
 liquid = new Liquid(0,height/2, width, height /2, 0.1);
 for(int i = 0; i < movers.length;i++)
 {
   movers[i] = new Mover(random(5,15), random(width),0);
 } 
}

void draw()
{
 background(255);
 
 PVector wind = new PVector(0.01,0);
 PVector gravity = new PVector(0,0.02);
 
 liquid.display();
 
 for(Mover m : movers)
 {
   float c = 0.01;
   PVector friction = m.velocity.get();
   friction.mult(-1);
   friction.normalize();
   friction.mult(c);
   
    //m.applyForce(friction);
    //m.applyForce(wind);
    PVector g = gravity.get();
    g.mult(m.mass);
    m.applyForce(g);
 
    m.update();
    m.checkEdges();
    m.display();
    
    if(m.isInside(liquid))
    {
     m.drag(liquid); 
    }
 }
 

 }
