import java.util.*;

Random generator;

void setup()
{
 size(640, 360);
 generator = new Random();
}

void draw()
{
 float num = (float)generator.nextGaussian(); 
 
 float sd = 80;
 float mean = 320;
 
 float x = sd * num + mean;
 
 num = (float)generator.nextGaussian();
 sd = 45;
 mean = 180;
 
 float y = sd * num + mean;
 
 noStroke();
 
 float r = 128 * (float)generator.nextGaussian() + 128; 
 float g = 128 * (float)generator.nextGaussian() + 128; 
 float b = 128 * (float)generator.nextGaussian() + 128; 
 fill(r,g,b);
 ellipse(x, y, 16,16);
}
