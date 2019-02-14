class Walker 
{
 float x,y;
 float tx, ty;
 float stepx, stepy;
 
 Walker()
 {
   x = width / 2;
   y = height / 2;
   
   tx = 0;
   ty = 10000;
 }
 
 void step()
 {
 stepx = map(noise(tx), 0,1,-3,3);
 stepy = map(noise(ty), 0,1,-3,3);
 
 tx += 0.1;
 ty += 0.1;
 
 x += stepx;
 y += stepy;
 }
 
 void draw()
 {
  fill(175);
  ellipse(x,y,16,16);
 }
}
