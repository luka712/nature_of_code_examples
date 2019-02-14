class Predator
{

  PVector location;
  float mass;

  Predator()
  {
   mass = random(30,60); 
   location = new PVector(random(width), random(height));
  }

  void display()
  {
   fill(200,0,0);
   noStroke();
   ellipse(location.x, location.y, mass, mass);
  }

}
