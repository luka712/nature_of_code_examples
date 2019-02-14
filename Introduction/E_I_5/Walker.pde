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
  int choice = int(random(4));
  float d = (float)generator.nextGaussian() + 1;
  
  if(choice == 0)
  {
   x+= d;
  }
  else if(choice == 1)
  {
   x+= d; 
  }
  else if(choice == 2)
  {
   y+=d; 
  }
  else
  {
   y+=d; 
  }
 }
}
