PShape ravi1;
float angle = 0;
float posY = 0;
float posX = 0;
float scaleFactor = 1.0;
boolean mirrorX = false;
boolean mirrorY = false;

void setup() {
  size(1000, 1000);
  
  // Membuat shape pertama (R)
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

  // Membuat huruf "I" di samping "R"
  ravi1.beginShape();
  ravi1.vertex(600, 100); // Atas
  ravi1.vertex(600, 700); // Bawah
  ravi1.vertex(700, 700); // Kanan bawah
  ravi1.vertex(700, 100); // Kanan atas
  ravi1.vertex(600, 100); // Kembali ke atas
  ravi1.endShape(CLOSE);
}

void draw() {
  background(255); // Membersihkan layar dengan warna putih
  translate(width / 2 + posX, height / 2 + posY);
  rotate(radians(angle));
  scale(mirrorX ? -scaleFactor : scaleFactor, mirrorY ? -scaleFactor : scaleFactor);
  
  // Menggambar shape pertama
  shape(ravi1, -width / 2, -height / 2);
}

void keyPressed() {
  float moveStep = 5;
  float scaleStep = 0.1;
  float angleStep = 5;

  switch(key) {
    case 'W': angle += angleStep; break;
    case 'C': angle -= angleStep; break;
    case '<': mirrorX = !mirrorX; break;
    case '>': mirrorY = !mirrorY; break;
    case '+': scaleFactor += scaleStep; break;
    case '-': scaleFactor -= scaleStep; break;
  }

  switch(keyCode) {
    case UP: posY -= moveStep; break;
    case DOWN: posY += moveStep; break;
    case LEFT: posX -= moveStep; break;
    case RIGHT: posX += moveStep; break;
  }
}
