// https://www.youtube.com/watch?v=ABvkYeqJFMo&ab_channel=TobiasCisneros
PImage img;
color colorFondo = color(139, 69, 19);
boolean reiniciar = false;
int tamCuadroBase = 2;
int offsetX = width / 2;

void setup() {
  size(800, 400);
  img = loadImage("obra_agv.jpg");
}

void draw() {
  background(255);
  image(img, 0, 0);
  dibujarCuadricula(width / 2 + offsetX, (height - 15 * (tamCuadroBase + 5)) / 2 - 100, 1, 1);
  
  if (reiniciar) {
    colorFondo = color(139, 69, 19);
    reiniciar = false;
  }
  
  if (offsetX > width / 2) {
    offsetX = width / 2;
  }
}

void dibujarCuadricula(int posX, int posY, int incrementoI, int incrementoK) {
  for (int fila = 0; fila < 25; fila++) {
    for (int columna = 0; columna < 25; columna++) {
      int tamCuadro = tamCuadroBase;
      
      if (columna > 12) {
        if (fila > 12) {
          fill(colorFondo);
          rect(posX, posY, tamCuadro + 12 - incrementoI, tamCuadro + 12 - incrementoK);
        } else {
          fill(colorFondo);
          rect(posX, posY, tamCuadro + 12 - incrementoI, tamCuadro + fila);
        }
        incrementoI += 1;
        posX += tamCuadroBase + 12 - incrementoI + 5;
      } else {
        if (fila > 12) {
          fill(colorFondo);
          rect(posX, posY, tamCuadro + columna, tamCuadro + 12 - incrementoK);
        } else {
          fill(colorFondo);
          rect(posX, posY, tamCuadro + columna, tamCuadro + fila);
        }
        posX += tamCuadroBase + columna + 5;
      }
    }
    if (fila > 12) {
      incrementoK++;
    }
    incrementoI = 1;
    posX = width / 2 + offsetX;
    if (fila > 12) {
      posY += tamCuadroBase + 12 - incrementoK + 5;
    } else {
      posY += tamCuadroBase + fila + 5;
    }
  }
}

void verificarPosicionMouse(int mouseX, int puntoX) {
  if (mouseX > puntoX) {
    colorFondo = colorAleatorio();
  }
}

void mousePressed() {
  verificarPosicionMouse(mouseX, width / 2);
}

color colorAleatorio() {
  return color(random(255), random(255), random(255));
}

void keyPressed() {
  if (key == 'r') {
    reiniciarPrograma();
  }
}

void reiniciarPrograma() {
  reiniciar = true;
}
