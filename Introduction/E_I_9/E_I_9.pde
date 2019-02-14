void setup()
{
 size(640,320);
 
}
 float t = 0;
void draw()
{
 
 loadPixels();
 
 noiseDetail(22);
 
t += 0.1;
 
 float rx= 0;
 float gx = 0;
 float bx = 0;
 
 for(int x = 0; x < width;x++)
 {
  float ry = 0;
  float gy = 0;
  float by = 0;
  
  for(int y = 0; y < height;y++)
  {
   float r = map(noise(rx,ry,t), 0,1,0,255);
   float g = map(noise(gx,gy,t), 0,1,0,255);
   float b = map(noise(bx,by,t), 0,1,0,255);
   
   pixels[x+y*width] = color(r,g,b); // color(random(255));
   
   ry += 0.01;
   gy += 0.0002;
   by += 0.0003;
 }
 
 bx += 0.0001;
 gx += 0.0002;
 rx += 0.01;
 }
 
 updatePixels(); 
}
