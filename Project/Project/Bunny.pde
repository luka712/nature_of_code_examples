class Bunny
{
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float topspeed;
  float mass;
  
  float dx,dy;
  
 public Bunny()
 {
   location = new PVector(random(width), random(height));
   velocity = new PVector(0,0);
   acceleration = new PVector(0,0);
   topspeed = 4;
   mass = random(10,16);

   dx = random(100);
   dy = random(100);
 }
 
 void update()
 {
   if(random(1) > 0.95)
   {
    dx += 0.1;
    dy += 0.1;
    acceleration.x += map(noise(dx),0,1,-2,2);
    acceleration.y += map(noise(dy), 0,1,-2,2);
  
    acceleration.mult(0.5);
   }   
  
  velocity.add(acceleration);
  velocity.limit(topspeed);
  location.add(velocity);
 }
 
 void display()
 {
  stroke(0);
  fill(255, 0,255);
  ellipse(location.x, location.y, mass, mass);
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
 
 void applyForce(PVector force)
 {
  acceleration.add(force); 
 }
 
 void attractToFood(Food food)
 {
    PVector dir = PVector.sub(food.location, location);
    
    float r = dir.mag();
    constrain(r, 25, 55);
    dir.normalize();
    
    float G = 1;
    float magnitude = (G * food.mass * mass) / (r*r);
   
     dir.mult(magnitude);
     applyForce(dir);
 }
 
 void moveFromSnake(Snake pred)
 {
  PVector dir = PVector.sub(location, pred.location);
  
  float r = dir.mag();
  constrain(r,25,55);
  dir.normalize();
  
  float G = 1;
  float magnitude = (G * pred.mass * mass) / (r*r);
  
  dir.mult(magnitude);
  applyForce(dir);
 }
 
 boolean isInLiquid(Liquid l)
 {
  return location.x > l.location.x && location.x < l.location.x + l.w 
    && location.y > l.location.y && location.y < l.location.y + l.h;
 }
 void inLiquid(Liquid l)
 {
  PVector v = velocity.get();
  float speed = v.mag();
  v.normalize();
  v.mult(-1);
  
  float c = 0.1;
  float dragMag = c * speed * speed;
  
  v.mult(dragMag);
  applyForce(v);
 }
}
