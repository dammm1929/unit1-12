





void pattern1() {
  pushMatrix();
  translate(width/2, height/2);
  background(#F57E94);
  noStroke();
  strokeWeight(5);
  colorMode(HSB);
  int c = 0;
  int o = 255;
  float d = 1000;
  for (int i = 0; i < 23; i++) {
    fill(c, 33*4, 84*4, o);
    square(- d/2, - d/2, d);
    rotate(5);
    d -= 45;
    c += 13;
    o -= 10;
  }
  popMatrix();
  
  
  
  
  
  
  //float x = width*2;
  //float y = 0;
  //float sx = -50;
  //float sy = -50;
  //for (int i = 0; i < 40; i++) { // top left
  //  line(sx,sy, x, y);
  //  x -= 50;
  //  y += 50;
  //}
  
  //sx = 1050; // top right
  //sy = -50;
  //x = -1000;
  //y = 0;
  //for (int i = 0; i < 40; i++) {
  //  line(sx,sy, x, y);
  //  x += 50;
  //  y += 50;
  //}

  






}
