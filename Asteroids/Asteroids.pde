Rocket myRocket;
Bullet bullet;
Timer timer;

Bullet[] bullets = new Bullet[100];
int bulletCounter = 0;

Rock[] rocks = new Rock[100];
int rockCounter;

void setup() {
  size(450, 550);
  smooth();
  
  myRocket = new Rocket();
  timer = new Timer(1250);
  timer.start();
  
  for (int index = 0; index < rocks.length; index++)
  {
    rocks[index] = new Rock();
  }
}

void draw() {
  background(127);
  
  doRocket();
  newRocks();
  iterateRocks();
  iterateBullets();
}

void keyPressed() 
{
  if (key == ' ')
  {
    bullets[bulletCounter] = new Bullet(myRocket.x, myRocket.y - 30);
    bulletCounter++;
    
    if (bulletCounter >=bullets.length)
    {
      bulletCounter = 0;
    }
  }
}

void doRocket() {
  myRocket.display();
  myRocket.move();
}

void newRocks() {
  if ( timer.isFinished() )
  {
    rocks[rockCounter] = new Rock();
    rockCounter++;
    
    if (rockCounter >= rocks.length)
    {
      rockCounter = 0;
    }
    
    timer.start();
  }
}

void iterateRocks()
{
  for (int index = 0; index < rockCounter; index++)
  {
    rocks[index].display();
    rocks[index].move();
    rocks[index].bounce();
    
    for (int bulletIndex = 0; bulletIndex < bulletCounter; bulletIndex++)
    {
      if ( bullets[bulletIndex].intersect( rocks[index] ) )
      {
        rocks[index].explode();
      }
    }
  }
}

void iterateBullets()
{
  for (int index = 0; index < bulletCounter; index++)
  {
    bullets[index].display();
    bullets[index].move();
  }
}