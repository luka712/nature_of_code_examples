import java.util.*;

class Walker
{
 int x;
 int y;
 Random generator;
 
 Walker()
 {
  x = width/2;
  y = height/2;
  generator = new Random();
 }
 
 void display()
 {
  stroke(0);
  point(x,y);
 }
 
 void step()
 {
  float stepsize = random(0,10);
  
  float stepx = random(-stepsize, stepsize);
  float stepy = random(-stepsize, stepsize);
  
  x += stepx;
  y += stepy;
 }
}
