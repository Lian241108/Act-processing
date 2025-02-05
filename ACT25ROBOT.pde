int x = 400;
int y = 400;

void setup() {
  size(800, 800);
}

// COS
void drawCos() {
  //TOT
  fill(255, 200, 0);
  strokeWeight(5);
  rect(x, y, 200, 200);
  //Part alta
  strokeWeight(3);
  fill(100);
  rect(x, y-65, 200, 70);
  //part alte centre
  strokeWeight(2);
  fill(50);
  rect(x, y-65, 120, 70);
  //bateria
  strokeWeight(3);
  fill(0, 255, 0);
  rect(x + 20, y-65, 30, 50);
  //lines bateria
  for (int l = 50; l <= 80; l += 10) {
    line(x+5, y-l, x+35, y-l);
  }
  //text
  fill(0);
  text("WALL-E", x-30, y+70);
  //cercle
  strokeWeight(0);
  fill(255, 0, 0);
  circle(x+25, y+65, 20);
  fill(255);
  text("E", x+22, y+69);
}

// COLL
void drawColl() {
  strokeWeight(5);
  fill(255, 200, 0);
  rect(x, y - 150, 30, 100);
}

// ULLS
void drawUlls() {
  strokeWeight(10);
  fill(255);
  circle(x - 35, y - 190, 65);
  circle(x + 35, y - 190, 65);
}

// Ulls interiors
void drawUllspetits() {
  fill(0, 0, 255);
  strokeWeight(2);
  circle(x - 35, y - 190, 30);
  circle(x + 35, y - 190, 30);
  strokeWeight(0);
  fill(0);
  circle(x - 35, y - 190, 10);
  circle(x + 35, y - 190, 10);
}

// RODES
void drawRodes() {
  strokeWeight(2);
  fill(0);


  rect(x - 50, y + 135, 80, 70);
  strokeWeight(2);
  stroke(100);
  for (int i = 115; i <= 165; i += 10) {
    line(x - 85, y + i, x - 15, y + i);
  }
  strokeWeight(0);
  stroke(0);

  rect(x + 50, y + 135, 80, 70);
  strokeWeight(2);
  stroke(100);
  for (int j = 115; j <= 165; j += 10) {
    line(x + 15, y + j, x + 85, y + j);
  }
  strokeWeight(3);
  stroke(0);
}
// BRAÇOS
void drawBraços() {
  strokeWeight(3);
  fill(100);
  rect(x - 110, y, 20, 100);
  rect(x + 110, y, 20, 100);
  fill(255, 200, 0);
  rect(x - 110, y-50, 20, 50);
  rect(x + 110, y-50, 20, 50);
}
// MANS
void drawMans() {
  strokeWeight(2);
  fill(100);
  rect(x - 110, y + 70, 40, 40);
  line(x - 110, y + 90, x-110, y+50);
  rect(x + 110, y + 70, 40, 40);
  line(x + 110, y + 90, x+110, y+50);
}

void drawRobot() {
  drawCos();
  drawColl();
  drawUlls();
  drawUllspetits();
  drawRodes();
  drawBraços();
  drawMans();
}
void draw() {
  background(255);
  rectMode(CENTER);
  drawRobot();
  x=mouseX;
  y=mouseY;
}
