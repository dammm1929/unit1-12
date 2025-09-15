


void pattern2() {
  //float x = 0;
  //float y = 0;
  background(#27AF9C);
  stroke(0);
  strokeWeight(6);
  fill(#49CDD3);
  float diameter = 200;
  for (float y = 0; y <= height; y += diameter) { // fitted circles
    for (float x = 0; x <= width; x += diameter) {
      circle(x + diameter/2, y + diameter/2, diameter);
    }
  }
  
  fill(#27AF9C);
  for (float y = -100; y <= height; y += diameter) { // corner circles
    for (float x = -100; x <= width; x += diameter) {
      circle(x + diameter/2, y + diameter/2, diameter);
    }
  }
  
  noFill();
  for (float y = 0; y <= height; y += diameter) { // fitted circles
    for (float x = 0; x <= width; x += diameter) {
      circle(x + diameter/2, y + diameter/2, diameter);
    }
  }









}
