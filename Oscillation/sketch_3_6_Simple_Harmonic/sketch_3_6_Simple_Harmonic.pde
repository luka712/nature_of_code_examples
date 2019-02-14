float angle = 0;
float angularVelocity = 0.05;

void setup()
{
 size(640,380);
 background(255);
}

void draw()
{
  background(255);
  ;
  float amplitude = 100;
  
  float x = amplitude * cos(angle);
  
  angle += angularVelocity;
  
  stroke(0);
  fill(175);
  translate(width / 2, height / 2);
  line(0,0,x,0);
  ellipse(x,0,20,20);
}
