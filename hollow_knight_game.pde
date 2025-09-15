// kings pass project
boolean wkey,akey,dkey;

void setup() {
  size(1000,700);
  
  
}




void draw() {
  
  
  
  
}


void keyPressed() {
  if (key == 'd') dkey = true;
  if (key == 'a') akey = true;
  if (key == 'w') wkey = true;
}

void keyReleased() {
  if (key == 'd') dkey = false;
  if (key == 'a') akey = false;
  if (key == 'w') wkey = false;
}
