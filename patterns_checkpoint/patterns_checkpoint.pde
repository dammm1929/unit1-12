int mode;


void setup() {
  size(1000,1000);
  mode = 1;
}

void draw() {
  if (mode == 1) {
    pattern1();
  } else if (mode == 2) {
    pattern2();
  } else if (mode == 3) {
    pattern3();
  } else {
    println("error mode = " + mode);
  }
}

void keyPressed() {
  if (keyCode == RIGHT) mode += 1;
  if (keyCode == LEFT) mode -= 1;
  if (mode > 3) mode = 1; // cycling back
  if (mode < 1) mode = 3;
}
