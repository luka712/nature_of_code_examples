Mover m;
Attractor a;

void setup()
{
 size(640,360);
 m = new Mover(10,300,100);
 a = new Attractor();
 //m.velocity = new PVector(1,1);
}

void draw()
{
 background(255);
 
 PVector force = a.attract(m);
 m.applyForce(force);
 m.update();
 
 a.display();
 m.display();
}


  
