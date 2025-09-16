float hornetx = 150;
float hornety = 530;
float hornetwidth = 35;
float hornetheight = 70;
float vy;
float ay = 0.1;

float targetx = 800;
float targety = 400;

void game() {
  background(#9B7B8B);
  hornet();
  ground();
  target();
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
  
  
  
  
}



void hornet() {
  strokeWeight(3);
  fill(#D2D4D8);
  rect(hornetx,hornety, hornetwidth,hornetheight);
  
}

void target() {
  stroke(0);
  fill(#F06366);
  ellipse(targetx, targety, 50,65);
  noFill();
  fill(255);
  ellipse(targetx-4, targety, 35,48);
  fill(#F06366);
  ellipse(targetx-6, targety, 20,30);
  
  fill(#D3D3D3, 200);
  noStroke();
  triangle(targetx+14,targety-17, targetx+40,targety-30, targetx+25,targety-45);
  
}

void ground() {
  fill(#9D8888);
  stroke(0);
  rect(-10,600,1020,200);
  
}
