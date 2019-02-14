// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// An array of objects
Oscillator[] oscillators = new Oscillator[4];

void setup()  {   
  size(640,360);  
  smooth();  
  // Initialize all objects
 
 PVector a = new PVector(100,100);
    oscillators[0] = new Oscillator( a);
    oscillators[1] = new Oscillator( a);
    oscillators[2] = new Oscillator( a);
    oscillators[3] = new Oscillator( a);
  
  background(255);  
}   

void draw() {     
  background(255);  
  // Run all objects
  for (int i = 0; i < oscillators.length; i++) {
    oscillators[i].oscillate();
    oscillators[i].display();
  }
}  
