Mover[] movers = new Mover[20];

void setup()
{
 size(640,360);
 
 for(int i = 0; i < movers.length;i++)
 {
   movers[i] = new Mover();
 }
}

void draw()
{
 background(255);
 
 for(int i = 0; i < movers.length;i++)
 {
   Mover mover = movers[i];
 mover.update();
 mover.checkEdges();
 mover.display();
 }
}
