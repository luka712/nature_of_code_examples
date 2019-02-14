class Mover
{
 PVector location;
 PVector velocity;
 PVector acceleration;
 
 float topspeed;
 
 Mover()
 {
  location = new PVector(random(width / 2), random(height / 2));
  velocity = new PVector(0,0);
  acceleration = new PVector(0, 0);
  topspeed = 10;
 }
 
 void update()
 {
  velocity.add(acceleration);
  velocity.limit(10);
  location.add(velocity); 
  
  acceleration.mult(0);
 }
 
 void display()
 {
  stroke(0);
  fill(175);
  ellipse(location.x, location.y,16,16);
 }
 
 void checkEdges()
 {
  if(location.x > width)
  {
   location.x = 0; 
  }
  else if(location.x < 0)
  {
   location.x = width; 
  }
  
  if(location.y > height)
  {
   velocity.y *= 1; 
  }
  else if(location.y < 0)
  {
   velocity.y *= -1; 
  }
  
 }
 
 
  void applyForce(PVector force)
  {
   acceleration.add(force); 
  }
}
