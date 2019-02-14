class Oscillator
{
  PVector angle;
  PVector velocity;
  PVector amplitude;
  PVector acceleration;
  

  Oscillator(PVector a_)
  {
    amplitude = a_;
   angle = new PVector();
   velocity = new PVector();
  }
  
  void oscillate()
  {
    acceleration = new PVector(random(-0.01,0.01), random(-0.01,0.01));
    
    velocity.add(acceleration);
    
    velocity.limit(0.05);
    angle.add(velocity); 
  }
  
  void display()
  {
   float x = (sin(angle.x)) * amplitude.x;
   float y = (sin(angle.y)) * amplitude.y;
   
   pushMatrix();
   translate(width/2, height/2);
   stroke(0);
   line(0,0,x,y);
   ellipse(x,y,16,16);
   popMatrix();
  }
}
