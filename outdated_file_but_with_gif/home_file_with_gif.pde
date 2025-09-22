// hornet target game
boolean jump; boolean chuck; boolean hit;
int mode;
float[] targx;
float[] targy;

PImage[] gif;
int frames; // 74 (0-73)


void setup() {
  size(1000,700);
  mode = 1;
  targx = new float[30];
  targy = new float[30];
  
  frames = 74;
  gif = new PImage[frames];
  int o = 0;
  while(o < frames) {
    gif[o] = loadImage("frame_" + o + "_delay-0.14s.gif");
    o+=1;
  }
  
  
  
  for (int i = 0; i < 5; i++) { // assign coordinates for first 5 targets (first one is guaranteed)
    targx[i] = random(300,900);
    targy[i] = random(200,550);
  }
  
  for (int i = 5; i <= 7; i++) { // assign coordinates for stages 5-7 (smaller area)
    targx[i] = random(400,800);
    targy[i] = random(200,300);
  }
  
  for (int i = 7; i <= 9; i++) { // assign coordinates for stages after 7-9 (even smaller area)
    targx[i] = random(400,800);
    targy[i] = random(250,260);
  }
  
  for (int i = 9; i <= 13; i++) { // assign coordinates for stages after 7-9 (even smaller area)
    targx[i] = random(400,800);
    targy[i] = random(250,300);
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
  if (mouseX > 400 && mouseX < 600 && mouseY > 400 && mouseY < 500 && mode == 1) {
    mode = 2;
  }
}

void tactile(int x, int y) {
  if (mouseX > 400 && mouseX < 600 && mouseY > 400 && mouseY < 500) {
    fill(#C6C6C6);
  }
  
}
