float angle = 0;

void setup()
{
 size(640,360); 
}

void draw()
{
  angle += 0.01;
  translate(width/2, height/2);
  rotate(angle);
  ellipse(-30,0,20,20);
  ellipse(30,0,20,20);
  line(-30,0,30,0);
}
