class Walker
{
 int x;
 int y;
 
 Walker()
 {
  x = width/2;
  y = height/2;
 }
 
 void display()
 {
  stroke(0);
  point(x,y);
 }
 
 void step()
 {
  int choice = int(random(10));
  
  if(choice <= 4)
  {
   x++;
  }
  else if(choice == 5)
  {
   x--; 
  }
  else if(choice >= 6 && choice <= 8)
  {
   y++; 
  }
  else 
  {
   y--; 
  }
 }
}
