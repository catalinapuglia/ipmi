// tp1 comision 1 catalina puglia
PImage gato;
void setup() {
  size (800, 400); // tamaño de ventana 800 px de ancho x 400 de altura
  gato =loadImage("gato.jpg");

}
 

void draw() {

println("mouseX: " + mouseX + " mouseY: " + mouseY);

background (0, 0, 0);
image(gato, 0, 0, 400, 400);
ellipse (540, 108, 200, 112);

triangle (475, 65, 479, 29, 524, 51); 



triangle (565, 53, 619, 28, 618, 73);
line (458, 102, 418, 107);
line (460, 116, 421, 121);
line (627, 100, 655, 101);
line (628, 112, 655, 119);
rect (485, 159, 115, 33);
ellipse (685, 219, 185, 120);
ellipse (535, 226, 178, 100);
ellipse (541, 297, 40, 25);
triangle (572, 255, 535, 297, 577, 298); 
triangle (572, 255, 577, 298, 597, 261);
triangle (542, 286, 541, 276, 553, 276);
triangle (775, 229, 790, 251, 745, 296);
triangle (775, 229, 710, 288, 745, 296);
ellipse (720, 302, 78, 37);
ellipse (546, 306, 75, 30);
stroke (112, 107, 116);
fill (191, 178, 175);







}
