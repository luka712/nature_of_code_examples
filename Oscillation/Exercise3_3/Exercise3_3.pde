Mover m;
int index = 0;

Attractor a;

void setup() {
  size(640,360);
  background(255);
  a = new Attractor();
  m = new Mover(4, width/2,height/2);
}


void draw() {
  background(255);
  
  if(keyPressed)
  {
   if(key == 'a')
    {
      m.applyForce(new PVector(-0.1,0));
    }else if(key == 's')
    {
            m.applyForce(new PVector(0,0.1));
    }
    else if(key == 'w')
    {
      m.applyForce(new PVector(0,-0.1));
    }
    else if(key == 'd')
    {
    m.applyForce(new PVector(0.1,0));
    }
  }

  m.update();
  m.display();

}
