class Attractor
{
 float mass;
 PVector location;
 float G;
 
 Attractor()
 {
  location = new PVector(random(width), random(height / 2));
  mass = 20;
  G = 0.4;
 }
 
 PVector attract(Mover m)
 {
  PVector force = PVector.sub(location, m.location);
  float distance = force.mag();
  float multiplier = 1;
  if(distance < 10)
  {
    multiplier = -1;
  }
  distance = constrain(distance,5,25);
  
  force.normalize();
  float strength = (G * mass * m.mass) / (distance * distance);
  force.mult(strength * multiplier);
  
  return force;
 }
 
 void display()
 {
  stroke(0);
  fill(175, 200);
  ellipse(location.x, location.y, mass * 2, mass * 2);
 }
}
