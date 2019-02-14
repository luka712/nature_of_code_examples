Walker w;

void setup()
{
 size(640,320);
 w = new Walker();
}

void draw()
{
 w.step();
 w.draw();
}
