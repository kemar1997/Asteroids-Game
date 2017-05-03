class Bullet
{
  float x;
  float y;
  
  Bullet(float newX, float newY)
  {
    x = newX;
    y = newY;
  }
  
  void display()
  {
    fill(255, 55, 55);
    ellipseMode(CENTER);
    ellipse(x, y, 2, 8);
  }
  
  void move()
  {
    y -= 10;
  }
  
    boolean intersect(Rock rock)
  {
   if ( dist(x, y, rock.x, rock.y) < (1 + rock.radius) )
   {
     return true;
   }
   else
   {
     return false;
   }
  }
}