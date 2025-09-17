// kings pass project
boolean jump; boolean chuck; boolean hit;
int mode;
float[] targx;
float[] targy;

void setup() {
  size(1000,700);
  mode = 2;
  targx = new float[30];
  targy = new float[30];
  
  for (int i = 0; i < 5; i++) { // assign coordinates for first 5 targets (first one is guaranteed)
    targx[i] = random(300,900);
    targy[i] = random(200,550);
  }
  
  
  for (int i = 5; i <= 10; i++) { // assign coordinates for stages after 5 (smaller area)
    targx[i] = random(400,800);
    targy[i] = random(300,450);
  }
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
  if (key == ' ') {
    chuck = true;
    daggery = hornety;
    daggerx = hornetx;
  }
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
