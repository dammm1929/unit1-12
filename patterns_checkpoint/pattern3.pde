

void pattern3() {
  background(#7C69ED);
  float x1 = width/2;
  float y1 = height/2;
  float x2 = -300;
  float y2 = -300;
  float x3 = -300;
  float y3 = height + 300;
  int r = 255; int g = 235; int b = 235;
  colorMode(RGB);
  strokeWeight(5);
  stroke(0);
  line(0,0,width,height);
  line(width,0,0,height);
  
  for (int i = 0; i < 11; i++) { // bottom side
    fill(r,g,b);
    triangle(x1,y1, x2,y2, x3,y3);
    x1 -= 50;
    g -= 20;
    b -= 20;
  }
  
  
  r = 235; //reset coords for new side
  g = 235;
  b = 255;
  x1 = width/2;
  y1 = height/2;
  x2 = -300;
  y2 = -300;
  x3 = width + 300;
  y3 = -300;
  
  for (int i = 0; i < 11; i++) { //top side
    fill(r,g,b);
    triangle(x1,y1,x2,y2, x3,y3);
    y1 -= 50;
    g -= 20;
    r -= 20;
  }
  
  r = 235; //reset coords for new side
  g = 255;
  b = 235;
  x1 = width/2;
  y1 = height/2;
  x2 = width + 300;
  y2 = -300;
  x3 = width + 300;
  y3 = height + 300;
  
  
  for (int i = 0; i < 11; i++) { //right side
    fill(r,g,b);
    triangle(x1,y1,x2,y2, x3,y3);
    x1 += 50;
    r -= 20;
    b -= 20;
  }
  
  r = 255; //reset coords for new side
  g = 255;
  b = 235;
  x1 = width/2;
  y1 = height/2;
  x2 = width + 300;
  y2 = height + 300;
  x3 = -300;
  y3 = height + 300;
  
  for (int i = 0; i < 11; i++) { //bottom side
    fill(r,g,b);
    triangle(x1,y1,x2,y2, x3,y3);
    y1 += 50;
    b -= 20;
  }
  
  
  
  
  
  
  
  

  
}
