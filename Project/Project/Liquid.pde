
class Liquid
{
PVector location;
PVector center;
float w;
float h;
float mass;

Liquid()
{
 location = new PVector(random(width), random(height));
 w = random(200,400);
 h = random(200,400);
 center = new PVector(location.x + w/2, location.y + h/2);
 mass = (w + h) /2;
}

void display()
{
  stroke(0);
  fill(0,0,255);
  rect(location.x, location.y, w,h);
}
}
