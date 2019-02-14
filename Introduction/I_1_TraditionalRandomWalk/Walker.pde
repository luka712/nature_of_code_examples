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
  float d = random.nex
  
  if(choice == 0)
  {
   x++;
  }
  else if(choice == 1)
  {
   x--; 
  }
  else if(choice == 2)
  {
   y++; 
  }
  else
  {
   y--; 
  }
 }
}
