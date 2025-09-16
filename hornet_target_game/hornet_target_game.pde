// kings pass project
boolean jump;
int mode;

void setup() {
  size(1000,700);
  mode = 2;
}

void draw() {
  if (mode == 1) {
    intro();
  } else if (mode == 2) {
    game();
  } else if (mode == 3) {
    gameover();
  } else {
    println("error mode = " + mode);
  }
}

void keyPressed() {
  if (key == 'w') jump = true;
}

void keyReleased() {
  if (key == 'w') jump = false;
}

void mousePressed() {
  if (mouseX > 400 && mouseX < 600 && mouseY > 400 && mouseY < 500) {
    mode = 2;
  }
}

void tactile(int x, int y) {
  if (mouseX > 400 && mouseX < 600 && mouseY > 400 && mouseY < 500) {
    fill(#C6C6C6);
  }
  
}
