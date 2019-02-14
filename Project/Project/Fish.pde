class Fish
{
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float topspeed;
  
  float dx,dy;
  float mass;
  
 public Fish()
 {
   location = new PVector(random(width), random(height));
   velocity = new PVector(0,0);
   acceleration = new PVector(0,0);
   topspeed = 3;

   dx = random(100);
   dy = random(100);
   
   mass = random(15,25);
 }
 
 void update()
 {
   dx += 0.01;
   dy += 0.01;
  acceleration.x += map(noise(dx),0,1,-2,2);
  acceleration.y += map(noise(dy), 0,1,-2,2);
  
  acceleration.mult(0.1);
   
  velocity.add(acceleration);
  velocity.limit(topspeed);
  location.add(velocity);
 }
 
 void display()
 {
  stroke(0);
  fill(100,100,205);
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
 
 void applyForce(PVector f)
 {
  acceleration.add(f); 
 }
 
 void attractToLiquid(Liquid l)
 {
  PVector dir = PVector.sub(l.center, location);
  
  float r = dir.mag();
  constrain(r, 150,250);
  
  dir.normalize();
  float G = 0.1;
  float magnitude = (G * mass * l.mass) / (r * r);
  
  dir.mult(magnitude);
  applyForce(dir);
 }
}
