PImage imagen_0;
PImage imagen_1;
PImage imagen_2;
PImage imagen_3;
PImage imagen_4;
PImage imagen_5;
PImage imagen_6;

int pantalla = 0;
int escalado = 0;
int escalado1 = 0;
float aumento = 0;

void setup() {
  size(640, 480);
  stroke(255, 0, 0);
  imagen_0 = loadImage("inicio.jpg");
  imagen_1 = loadImage("goku.jpg");
  imagen_2 = loadImage("Pantalla_2.jpg");
  imagen_3 = loadImage("Pantalla_3.jpg");
  imagen_4 = loadImage("Pantalla_4.jpg");
  imagen_5 = loadImage("Pantalla_5.jpg");
}

void draw() {
  if (pantalla < 0 || pantalla > 5){
    pantalla = 0;
    escalado = 0;
    escalado1= 0;
    aumento = 0;
  }
  if (escalado >= 400){
    pantalla = pantalla + 1;
  } 
   if (escalado1==400){
    pantalla = pantalla + 1;
  } 

  if (pantalla == 0) {
    background(0);
    image(imagen_0, 0, 0, 640, 480);
    escalado = 0;
    escalado1 = 0;

    //Boton
    println(mouseX, mouseY);
    rect(520, 400, 50, 50);
    fill(255, 0, 0);
    beginShape();
    triangle(535, 410, 535, 440, 555, 425);
    endShape();
    //

    textSize(40);
    fill(0);
    text("Todas las transformaciones de Goku", 10, height/3);
    text("en Dragon Ball Z", width/5, height/2);
    fill(0);
  } else if (pantalla == 1) {
    image(imagen_1, 0, 0, 640, 480);
    escalado += 1;
    textSize(20);
    text("El protagonista absoluto de Dragon Ball, un guerrero saiyajin ", 25, escalado + 20);
    text("que defiende la Tierra de diversas amenazase", 25, escalado + 40);
  } else if (pantalla == 2) {

    image(imagen_2, 0, 0, 640, 480);
    aumento = aumento + 0.05;
    textSize(aumento);
    escalado = 0;
    escalado1+= 1;
    fill(0, 255, 255);
    text("Cuando un Saiyan mira a la luna llena se convierte instantáneamente en Ozaru,", 0, escalado1+ 20);
    text("que es básicamente un mono gigante, agresivo e incontrolable,", 0, escalado1+ 40);
  } else if (pantalla == 3) {
    escalado1 = 0;
    aumento = 1;
    escalado = escalado + 1;
    image(imagen_3, 0, 0, 640, 480);
    textSize(20);
    text("Se dice que los Saiyan, por norma general,", 25, escalado+ 20);
    text("consiguen evolucionar a esta fase a través de la ira", 25, escalado+ 40);
  } else if (pantalla == 4) {
    image(imagen_4, 0, 0, 640, 480);
    aumento = aumento + 0.05;
    textSize(aumento);
    escalado = 0;
    escalado1+= 1;
    fill(0, 255, 255);
    text("El Supersaiyajin 2 es la transformación sucesora del Supersaiyajin", 0, escalado1+ 20);
    text("que se alcanza gracias al arduo entrenamiento", 0, escalado1+ 40);
    text("o un gran enojo de un saiyajin puro o mestizo.", 0, escalado1+ 60);
  }else if (pantalla == 5) {
    escalado1 = 0;
    escalado = escalado + 1;
    image(imagen_5, 0, 0, 640, 480);
    textSize(20);
    fill(0);
    text("Es la tercera forma de Supersaiyajin, el sucesor de", 25, escalado+ 20);
    text(" la primera y segunda transformación", 25, escalado+ 40);
    
    fill(0);
    rect(520, 400, 100, 50);
    fill(255,0,0);
    text("Reiniciar",535,420,555,420);
  }
}

void mousePressed() {
  if (mouseButton == RIGHT) {
    pantalla = pantalla + 1;
  }
}

void mouseClicked() {
  if (mouseX > 520 && mouseY > 400 && mouseY < 450 && mouseX <570 && pantalla == 0) {
    pantalla = pantalla + 1;
  }
  if (mouseX > 520 && mouseY > 400 && mouseY < 450 && mouseX <620 && pantalla == 5) {
    pantalla = 1;
  }
}
