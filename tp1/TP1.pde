PImage imagen;

void setup() {
  size(800, 400);
  background(200);
  imagen = loadImage("Espada.jpg");
}

void draw() {
  background(200);
  strokeWeight(1.5);
  stroke(0);
  println(mouseX, mouseY);
  image(imagen, 100, 0, 200, 400);
  beginShape();
  fill(255);
  vertex(495, 360);
  vertex(495, 385);
  vertex(507, 376);
  vertex(507, 360);
  vertex(495, 360);
  endShape();

  fill(165, 13, 13);
  beginShape();
  vertex(490, 360);
  vertex(512, 360);
  vertex(512, 350);
  vertex(490, 350);
  vertex(490, 350);
  endShape();
  bezier(490, 360, 487, 357, 487, 352, 490, 350);
  bezier(512, 360, 516, 357, 516, 352, 512, 350);

  fill(152, 86, 15);
  beginShape();
  vertex(492, 350);
  vertex(492, 290);
  vertex(510, 290);
  vertex(510, 350);
  endShape();

  fill(255, 0, 0);
  beginShape();
  vertex(485, 240);
  vertex(515, 240);
  vertex(515, 50);
  vertex(515, 50);
  vertex(500, 10);
  vertex(485, 50);
  vertex(485, 240);
  endShape();

  fill(165, 13, 13);
  ellipse(500, 260, 77, 77);
  beginShape();
  vertex(436, 254);
  vertex(436, 268);
  vertex(562, 268);
  vertex(562, 254);
  vertex(436, 254);
  endShape();
  noStroke();
  ellipse(500, 260, 75, 75);

  stroke(116, 9, 18);
  strokeWeight(3);
  ellipse(500, 260, 60, 60);
  line(500, 290, 500, 10);

  bezier(436, 254, 435, 254, 428, 240, 426, 254);
  bezier(436, 268, 433, 276, 425, 271, 426, 268);
  bezier(426, 254, 413, 263, 420, 263, 426, 268);

  bezier(562, 254, 559, 254, 576, 240, 574, 254);
  bezier(574, 254, 600, 270, 555, 265, 574, 268);
  bezier(562, 268, 560, 275, 576, 275, 574, 268);
  

  noStroke();
  ellipse(431, 262, 18, 17);
  ellipse(570,262,20,18);
  
  stroke(116, 9, 18);
  line(430, 261, 565, 261);
  line(430,261,425,254);
  line(430,261,425,268);
  
  line(565,261,575,254);
  line(565,261,575,267);
  
  fill(255);
  stroke(255);
  
  line(492,240,492,254);
  line(492,280,492,268);
  line(508,280,508,268);
  line(508,240,508,254);
  
  line(492,254,480,254);
  line(492,268,480,268);
  line(508,254,520,254);
  line(521,268,508,268);
  
  bezier(492,240,478,244,483,240,480,254);
  strokeWeight(2);
  triangle(480,254,492,240,490,255);
  
  bezier(508,240,514,240,520,242,520,254);
  triangle(508,240,508,254,520,254);
  
  bezier(480,268,484,280,480,275,492,280);
  triangle(480,268,492,280,492,270);
  
  bezier(521,268,514,280,520,277,508,280);
  triangle(521,268,508,270,508,280);
  
  strokeWeight(2);
  stroke(0);
  line(501,362,501,374);
  line(495,367,505,367);
  
  strokeWeight(1);
  line(492,342,509,342);
  line(492,335,509,335);
  line(492,328,509,328);
  line(492,322,509,322);
  line(492,315,509,315);
  line(492,308,509,308);
  line(492,300,509,300);
  line(492,308,509,316);
  line(492,335,509,308);
  line(492,335,509,322);
  line(492,352,509,328);
}
