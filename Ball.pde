class Ball{
  float x;
  float y;
  float rad;
  color c;
  float dx;
  float dy;
  int state;
  
  Ball(){
    float r = random(256);
    float g = random(256);
    float b = random(256);
    c = color(r, g, b);
    rad = 20;
    x = random((width - rad) + rad/2);
    y = random((height - rad) + rad/2);
    dx = random(10) - 5;
    dy = random(10) - 5;
    move();
  }
  void move(){
    x += dx;
    y += dy;
    bounce(); //code later
  }
  void bounce(){// use radius in eq later 
    if(x + dx >= width || x + dx < 0) dx *= -1;
    if(y + dy >= height || y + dy < 0) dy *= -1;
  }
  
  
  
}