//https://www.youtube.com/watch?v=KzDQIu45XBk&ab_channel=TobiasCisneros
int columnas = 20;
int filas = 20;
int tamañoBase = 5;
int tamañoMaximo = 20;
int radio = 250;
PImage img;
boolean detectarMouse = true;
int tamaño;

void setup() {
  size(800, 400);
  img = loadImage("obra_agv.jpg");
  centrarMouse();
}

void draw() {
  background(255);
  image(img, 0, 0, width / 2, height);

  int anchoCelda = width / 2 / columnas;
  int altoCelda = height / filas;

  fill(139, 69, 19);
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      int x = width / 2 + i * anchoCelda + anchoCelda / 2;
      int y = j * altoCelda + altoCelda / 2;
      float distancia = dist(mouseX, mouseY, x, y);
      
      calcularTamaño(distancia);
      rectMode(CENTER);
      rect(x, y, tamaño, tamaño);
    }
  }

  fill(200);
  rect(740, 380, 100, 30);
  fill(0);
  textAlign(CENTER, CENTER);
  text("Alternar Mouse", 740, 380);
}

void mousePressed() {
  if (mouseX > 690 && mouseX < 790 && mouseY > 364 && mouseY < 394) {
    detectarMouse = !detectarMouse;
    if (detectarMouse) {
      centrarMouse();
    }
  }
}

void calcularTamaño(float distancia) {
  if (distancia < radio / 2) {
    tamaño = (int) map(distancia, 0, radio, tamañoMaximo, tamañoBase);
  } else {
    tamaño = tamañoBase;
  }
}

void mouseMoved() {
  if (detectarMouse) {
    centrarMouse();
  }
}

void centrarMouse() {
  mouseX = width / 2 + (width / 2) / 2;
  mouseY = height / 2;
}
