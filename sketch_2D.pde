PShape ravi1;
PShape ravi2;
float angle = 0;
float posY = 0;
float posX = 0;
float scaleFactor = 1.0;
boolean mirrorX = false;
boolean mirrorY = false;

void setup() {
  size(1000, 1000);
  
  // Membuat shape pertama
  ravi1 = createShape();
  ravi1.beginShape();
  ravi1.vertex(100, 100);
  ravi1.vertex(100, 700);
  ravi1.vertex(200, 700);
  ravi1.vertex(200, 400);
  ravi1.vertex(300, 700);
  ravi1.vertex(500, 700);
  ravi1.vertex(300, 300);
  ravi1.vertex(500, 300);
  ravi1.vertex(500, 100);
  ravi1.vertex(100, 100);
  ravi1.endShape(CLOSE);

  // Membuat shape kedua dengan koordinat x dan y ditukar
  ravi2 = createShape();
  ravi2.beginShape();
  ravi2.vertex(300, 150);
  ravi2.vertex(400, 150);
  ravi2.vertex(400, 250);
  ravi2.vertex(250, 250);
  ravi2.endShape(CLOSE);
}

void draw() {
  background(255); // Membersihkan layar dengan warna putih
  translate(width / 2 + posX, height / 2 + posY);
  rotate(radians(angle));
  scale(scaleFactor);
  scale(mirrorX ? -1 : 1, mirrorY ? -1 : 1);
  
  // Menggambar shape pertama
  shape(ravi1, -width / 2, -height / 2);

  // Menggambar shape kedua
  shape(ravi2, -width / 2, -height / 2);
}

void keyPressed() {
  if (key == 'W') {
    angle += 5;
  } else if (key == 'C') {
    angle -= 5;
  } else if (key == '<') {
    mirrorX = !mirrorX;
  } else if (key == '>') {
    mirrorY = !mirrorY;
  } else if (keyCode == UP) {
    posY -= 5;
  } else if (keyCode == DOWN) {
    posY += 5;
  } else if (keyCode == RIGHT) {
    posX += 5;
  } else if (keyCode == LEFT) {
    posX -= 5;
  } else if (key == '+') {
    scaleFactor += 0.1;
  } else if (key == '-') {
    scaleFactor -= 0.1;
  }
}
