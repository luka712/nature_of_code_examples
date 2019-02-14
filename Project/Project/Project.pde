Food[] foods;
Fly[] flies;
Fish[] fishes;
Bunny[] bunnies;
Snake[] snakes;
Liquid l;

void setup()
{
 size(800,600);
 background(255);
 
 flies = new Fly[(int)random(20)];
 for(int i = 0; i < flies.length;i++)
 {
  flies[i] = new Fly(); 
 }
 
 fishes = new Fish[(int)random(20)];
 for(int i = 0; i < fishes.length;i++)
  {
   fishes[i] = new Fish(); 
  }
  
  bunnies = new Bunny[(int)random(20)];
  for(int i = 0; i < bunnies.length;i++)
  {
   bunnies[i] = new Bunny(); 
  }
  
  snakes = new Snake[(int)random(20)];
  for(int i = 0; i < snakes.length;i++)
  {
   snakes[i] = new Snake(); 
  }
  
  foods = new Food[(int)random(5)];
  for(int i = 0; i < foods.length;i++)
  {
   foods[i] = new Food(); 
  }

  l = new Liquid();
}

void draw()
{
 background(255);
 
 
 for(Food f :foods)
 {
   f.display();   
 }
 
 l.display();
 
 for(int i = 0; i < flies.length;i++)
 {
  flies[i].update();
  flies[i].checkEdges();
  flies[i].display(); 
 }
 for(int i = 0; i < fishes.length;i++)
 {
  fishes[i].attractToLiquid(l);
   
   fishes[i].update();
  fishes[i].checkEdges();
  fishes[i].display();
  

 }
 for(int i = 0; i < bunnies.length;i++)
 {
     
  for(Food f :foods)
  {
   bunnies[i].attractToFood(f); 
  }
  
  for(Snake s:snakes)
  {
   bunnies[i].moveFromSnake(s); 
  }
  
  if(bunnies[i].isInLiquid(l))
  {
    bunnies[i].inLiquid(l);
  }
   
  bunnies[i].update();
  bunnies[i].checkEdges();
  bunnies[i].display();

 }
 for(int i = 0; i < snakes.length;i++)
 {
   if(snakes[i].isInLiquid(l))
  {
   snakes[i].inLiquid(l); 
  }
   
  snakes[i].update();
  snakes[i].checkEdges();
  snakes[i].display();
 }

 
}
