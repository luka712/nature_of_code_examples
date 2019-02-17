class Oscillator
{
  PVector position;
  PVector offset;
  float angle;
  float amplitude; 
  float speed;
  
  public Oscillator(float a_, float s_)
  {
   amplitude = a_;
   speed = s_;
   position = new PVector(); 
   offset = new PVector();
  }
  
  void update(PVector location, PVector direction, float angleCorr)
  {
    PVector l = location.get();
    
     offset.x = amplitude + amplitude * cos(angle);
     offset.y = amplitude + amplitude * sin(angle);
     
     PVector d = direction.get();
     d.normalize();
     float angleDir = atan2(d.y, d.x) + angleCorr;
     offset.x = cos(angleDir) * offset.x;
     offset.y = sin(angleDir) * offset.y;
     
     position.x = l.x + offset.x;
     position.y = l.y + offset.y;
     
     angle += speed;
  }
  
  void display(float col, float radius)
  {
    fill(col);
    ellipse(position.x, position.y, radius, radius);
  }
}
