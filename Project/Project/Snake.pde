class Snake
{
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  float topspeed;
  float mass;
  float dx,dy;
  
 public Snake()
 {
   location = new PVector(random(width), random(height));
   velocity = new PVector(0,0);
   acceleration = new PVector(0,0);
   topspeed = 3;

   dx = random(100);
   dy = random(100);
   
   mass = random(10,14);
 }
 
 void update()
 {
   dx += 0.01;
   dy += 0.01;
  acceleration.x += map(noise(dx),0,1,-5,5);
  acceleration.y += map(noise(dy), 0,1,-5,5);
  
  acceleration.mult(0.3);
   
  velocity.add(acceleration);
  velocity.limit(topspeed);
  location.add(velocity);
 
 acceleration.mult(0);
 }
 
 void display()
 {
  stroke(0);
  fill(175, 50,50);
  ellipse(location.x, location.y, mass, mass);
 }
 
 void applyForce(PVector f)
 {
  acceleration.add(f); 
 }
 
 boolean isInLiquid(Liquid l)
 {
   return location.x > l.location.x && location.x < l.location.x + l.w &&
   location.y > l.location.y && location.y < l.location.y + l.h;
 }
 
 
 void inLiquid(Liquid l)
 {
  PVector v = velocity.get();
  float speed = v.mag();
  v.mult(-1);
  v.normalize();
  
  float c = 2;
  
  float dragMag = speed * speed * c;
  v.mult(dragMag);
  applyForce(v);
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
