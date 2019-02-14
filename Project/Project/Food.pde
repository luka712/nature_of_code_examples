class Food
{

  PVector location;
  float mass;

  Food()
  {
   mass = random(30,60); 
   location = new PVector(random(width), random(height));
  }

  void display()
  {
    stroke(0);
   fill(0,200,0);
   ellipse(location.x, location.y, mass, mass);
  }

}
