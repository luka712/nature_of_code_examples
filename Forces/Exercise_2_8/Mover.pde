class Mover
{
 PVector location;
 PVector velocity;
 PVector acceleration;
 
 float mass;
 float area;
 
 Mover(float m,  float x, float y)
 {
  location = new PVector(x,y);
  velocity = new PVector(0,0);
  acceleration = new PVector(0, 0);
  mass = m;
  area = m * 0.2;
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
  ellipse(location.x, location.y,mass,mass);
 }
 
 void checkEdges()
 {
  if(location.x > width){
   location.x = width;
   velocity.x *= -1;
  }else if(location.x < 0){
   location.x = 0;
   velocity.x *= -1;
  }
  
  if(location.y > height){
   //velocity.y *= -1;
   location.y = height;
  }
 }
 
 
  void applyForce(PVector force)
  {
    PVector f = PVector.div(force, mass);
    acceleration.add(f); 
  }
  
  boolean isInside(Liquid l)
  {
   if(location.x > l.x && location.x <l.x + l.w && location.y > l.y
   && location.y < l.y + l.h)
   {
    return true; 
   }
   return false;
  }
  
  void drag(Liquid l)
  {
   float speed = velocity.mag();
   float dragMag = speed * speed * l.c * area;
   
   PVector drag = velocity.get();
   drag.mult(-1);
   drag.normalize();
   
   drag.mult(dragMag);
   
   applyForce(drag);
  }
}
