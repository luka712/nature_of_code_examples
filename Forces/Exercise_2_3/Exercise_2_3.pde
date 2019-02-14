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
 
 PVector edge = new PVector(0.0,0);
 PVector edge2 = new PVector(width, 0);
 PVector gravity = new PVector(0,0.1);
 
 for(Mover m : movers)
 {
    float x1 = edge.x - m.location.x;
    float x2 = edge2.x - m.location.x;
    
    x1 *= 0.003;
    x2 *= 0.003;
    
    m.applyForce(new PVector(x1,0));
    m.applyForce(new PVector(x2,0));
    m.applyForce(gravity);
 
    m.update();
    m.checkEdges();
    m.display();
 }
 

 }
