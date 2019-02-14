class Mover
{
 PVector location;
 PVector velocity;
 PVector acceleration;
 
 float tx,ty;
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
  
   tx += 0.01;
   ty += 0.02;
   acceleration.x = map(noise(tx), 0, 1, -2,2);
   acceleration.y = map(noise(ty), 0, 1, -2,2);
   
  velocity.add(acceleration);
  velocity.limit(10);
  location.add(velocity); 
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
   location.y = 0; 
  }
  else if(location.y < 0)
  {
   location.y = height; 
  }
 }
}
