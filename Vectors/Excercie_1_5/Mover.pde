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
   if(keyPressed)
   {
    if(keyCode == UP)
    {
      acceleration.x += 0.001;
    }
     else if(keyCode == DOWN)
     {
       acceleration.x -= 0.001;
     }
   }
   else 
   {
    acceleration.mult(0); 
   }
   
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
