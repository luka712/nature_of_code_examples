class Fly
{
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float topspeed;
  
  Oscillator leftWing;
  Oscillator rightWing;
  
 Fly()
 {
   location = new PVector(random(width), random(height));
   velocity = new PVector(0,0);
   acceleration = new PVector(0,0);
   topspeed = 5;
   
   float amplitude = 5;
   float speed = 0.4;
   leftWing = new Oscillator(amplitude, speed);
   rightWing = new Oscillator(amplitude, speed);
 }
 
 void update()
 {
  acceleration = PVector.random2D();
   
  velocity.add(acceleration);
  velocity.limit(topspeed);
  location.add(velocity);
  
  leftWing.update(location, velocity, PI / 4);
  rightWing.update(location, velocity, -PI / 4);
 }
 
 void display()
 {
  stroke(0);
  fill(175);
  ellipse(location.x, location.y, 16,16);
  
  leftWing.display(175,10);
  rightWing.display(175, 10);
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
