PFont font;
float angleX = 0;
float angleY = 0;
float angleZ = 0;
int thickness = 50;

void setup() {
  size(800, 600, P3D);
  font = createFont("Arial-Bold", 200, true);
  textFont(font);
  textAlign(CENTER, CENTER);
}

void draw() {
  background(255);
  lights();
  translate(width / 2, height / 2, 0);
  rotateX(angleX);
  rotateY(angleY);
  rotateZ(angleZ);
  fill(0);
  
  for (int i = 0; i < thickness; i++) {
    pushMatrix();
    translate(0, 0, -i);
    
    // Menggambar huruf "R"
    text("R", -100, 0);
    
    // Menggambar huruf "V"
    text("V", 100, 0);
    
    popMatrix();
  }
}

void keyPressed() {
  float angleStep = 0.1;
  if (key == 'w') {
    angleX -= angleStep;  // Pitch atas
  } else if (key == 's') {
    angleX += angleStep;  // Pitch bawah
  } else if (key == 'a') {
    angleY -= angleStep;  // Yaw kiri
  } else if (key == 'd') {
    angleY += angleStep;  // Yaw kanan
  } else if (key == 'q') {
    angleZ -= angleStep;  // Roll kiri
  } else if (key == 'e') {
    angleZ += angleStep;  // Roll kanan
  }
}
