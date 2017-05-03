class Rocket {
  
  float x;
  float y;
  
  Rocket() {
    x = width/2;
    y = height - 40;
  }
  
  void display() {
    fill(255);
    stroke(0);
    rectMode(CORNERS);
    
    x = constrain(x, 10, width - 10);
    
    rect(x-7, y-15, x+7, y+40);
    triangle(x-7, y-15, x+7, y-15, x, y-30);
    triangle(x-7, y+40, x-15, y+40, x-7, y+25);
    triangle(x+7, y+40, x+15, y+40, x+7, y+25);
  }
  
  // If the LEFT key is pressed move left
  // If the RIGHT key is pressed move right
  
  void move() 
  {
    if (keyPressed && keyCode == LEFT)
    {
      x -=5;
    }
    else if (keyPressed && keyCode == RIGHT)
    {
      x += 5;
    }
  }

}