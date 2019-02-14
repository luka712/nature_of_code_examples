Mover[] movers;
Attractor[] attractors;

void setup()
{
 size(1280,720);
 movers = new Mover[500];
 attractors = new Attractor[10];
 for(int i = 0; i < movers.length;i++)
 {
   Mover m = new Mover(random(5,15),random(width), random(height));
   movers[i] = m;
 }
 
 for(int i = 0; i < attractors.length;i++)
 {
   Attractor a = new Attractor();
   attractors[i] = a;
 }//m.velocity = new PVector(1,1);
}

void draw()
{
 background(255);

 for(Mover m : movers)
 {
   for(Attractor a: attractors)
   {
     PVector force = a.attract(m);
     m.applyForce(force);
   }
   m.update();
 
   m.display();
 }
}


  
