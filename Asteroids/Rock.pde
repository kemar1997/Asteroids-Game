class Rock {
  float radius;
  float x;
  float y;
  float speedX;
  float speedY;
  
  Rock() {
    radius = 20;
    x = random(width);
    y = 0;
    speedX = 5;
    speedY = random(1, 3);
  }
  
  void display()
  {
    stroke(0);
    fill(0);
    ellipseMode(CENTER);
    ellipse(x, y, radius * 2, radius * 2);
  }
  
  void move()
  {
    x += speedX;
    y += speedY;
  }
  
  void bounce() {
    if (x > width || x < 1)
    {
      speedX = -speedX;
    }
    
    //if (y > height || y < 1)
    //{
    //  speedY = -speedY;
    //}
  }
  
  //boolean intersect(Rock rock)
  //{
  // if ( dist(x, y, rock.x, rock.y) < (radius + rock.radius) )
  // {
  //   return true;
  // }
  // else
  // {
  //   return false;
  // }
  //}
  
  void explode()
  {
    if (radius > 0)
    {
      radius -= 10;
    }
  }
}