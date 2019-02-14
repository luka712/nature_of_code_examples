class Mover
{
 PVector location;
 PVector velocity;
 PVector acceleration;
 
 float mass;
 
 Mover(float m, float x, float y)
 {
  location = new PVector(x,y);
  velocity = new PVector(0,0);
  acceleration = new PVector(0, 0);
  mass = m;
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
  if(location.x > width){
   location.x = width;
   velocity.x *= -1;
  }else if(location.x < 0){
   location.x = 0;
   velocity.x *= -1;
  }
  
  if(location.y > height){
   velocity.y *= -1;
   location.y = height;
  }
 }
 
 
  void applyForce(PVector force)
  {
    PVector f = PVector.div(force, mass);
    acceleration.add(f); 
  }
}
