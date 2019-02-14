class Fly
{
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float topspeed;
  
 public Fly()
 {
   location = new PVector(random(width), random(height));
   velocity = new PVector(0,0);
   acceleration = new PVector(0,0);
   topspeed = 5;
 }
 
 void update()
 {
  acceleration = PVector.random2D();
   
  velocity.add(acceleration);
  velocity.limit(topspeed);
  location.add(velocity);
 }
 
 void display()
 {
  stroke(0);
  fill(175);
  ellipse(location.x, location.y, 16,16);
 }
 
 void checkEdges()
 {
  if(location.x > width || location.x < 0)
  {
    velocity.x *= -1;
  }
  if(location.y > height || location.y < 0)
  {
   velocity.y *= -1; 
  }
 }
}
