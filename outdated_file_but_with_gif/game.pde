float hornetx = 150;
float hornety = 530;
float hornetwidth = 35;
float hornetheight = 70;
float vy;
float ay = 0.1;

float targetsiny = 0;
float targetsinx = 0;

float targetx;
float targety;

float daggerx;
float daggery;

int stage = 1;

boolean coordsSet;

void game() {
  background(#9B7B8B);
  hornet();
  ground();
  vy += ay*1.6;

  
  if (hornety < 530) { // start falling
    vy += ay;
    hornety += vy*1.9;
  }
  if (hornety > 530) { // dont fall thru the ground
    hornety = 530;
  }
  if (jump && hornety == 530) {
    vy = -10;
    hornety -= 1; // get off the ground failsafe
  }
  
  if (chuck == true) {
    dagger();
    daggerx += 40;
  }
  
  if (stage == 1) {
    targetx = 800;
    targety = 210;
    target();
  }
  
  if (stage >= 2 && stage <= 5) {
    targetx = targx[stage];
    targety = targy[stage];
    target();
  }
  
  
  if (stage >= 6 && coordsSet == false) { // so the random coords are set and don't stay there
    targetx = targx[stage];
    targety = targy[stage];
    coordsSet = true;
  }
  
  
  if (stage == 6) {
    target();
    targety += sin(targetsiny)*3; // range of bob (but it affects speed so dont touch speed)
    targetsiny += 0.03; // speed of bob (lower speed = higher range)
  }
  if (stage == 7) {
    target();
    targety += sin(targetsiny)*6;
    targetsiny += 0.04;
  }
  if (stage == 8) {
    target();
    targety += sin(targetsiny)*10; 
    targetsiny += 0.05; 
  }
  if (stage == 9) {
    target();
    targety += sin(targetsiny)*12; 
    targetsiny += 0.05; 
  }
  
  if (stage == 10) {
    target();
    targety += sin(targetsiny)*5;
    targetsiny += 0.05;
    targetx += sin(targetsinx)*5;
    targetsinx += 0.05;
  }
  
  
  if (dist(daggerx+60,daggery, targetx,targety-30) <= 40) {
    chuck = false;
    coordsSet = false;
    daggerx = hornetx;
    stage += 1;
    print("hit");
  }
  
  
  
} // end of game function



void hornet() {
  strokeWeight(3);
  stroke(0);
  fill(#D2D4D8);
  rect(hornetx,hornety, hornetwidth,hornetheight);
  
}

void target() {
  stroke(0);
  strokeWeight(3);
  fill(#F06366);
  ellipse(targetx, targety, 50,65); // target target
  noFill();
  fill(255);
  ellipse(targetx-4, targety, 35,48);
  fill(#F06366);
  ellipse(targetx-6, targety, 20,30);
  
  fill(#D3D3D3, 200); // wings
  noStroke();
  pushMatrix();
  translate(targetx,targety);
  triangle(14,-17, 40,-30, 25,-45);
  triangle(-20,-21, -16,-40, -25,-34);
  popMatrix();
}

void ground() {
  strokeWeight(3);
  fill(#9D8888);
  stroke(0);
  rect(-10,600,1020,200);
  
}

void dagger() {
  stroke(0);
  strokeWeight(1);
  fill(255);
  pushMatrix();
  translate(daggerx,daggery);
  rect(40,32.5,30,5);
  line(43,32.5,46,37.5);
  line(49,32.5,52,37.5);
  line(55,32.5,58,37.5);
  circle(35,35,9);
  triangle(60,30, 100,35, 60,40);
  noStroke();
  fill(255,255,255,100);
  ellipse(60,35,90,20);
  popMatrix();
}
