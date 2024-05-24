
//tp2 comision 1 catalina puglia
PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PFont fuente;
float contador;
int posX;
int posX2;
int posY;
int posX3;
int posY2;
int posX4;
int posY3;
void setup() {
  size (640, 480);
  imagen1=loadImage ("imagen1.jpg");
  imagen2=loadImage ("imagen2.jpg");
  imagen3=loadImage ("imagen3.jpg");
  imagen4=loadImage ("imagen4.jpg");
  fuente=loadFont("BaskOldFace-30.vlw");
  textFont(fuente, 30);
  textAlign (CENTER, CENTER);
posX=920;
posX2=10;
posY=480;
posX3=320;
posY2=0;
posX4=320;
posY3=220;

  
}
void draw() {
  contador=contador+1;
  if(contador < 380) {
image(imagen1, 0, 0, 640, 480);
textSize(30);
fill (243, 255, 0);
text("direccion:Quentin Tarantino \n produccion:Lawrence Bender", posX,height/2);
posX=posX-3;
}

else if(contador > 400 && contador < 800) {
  image(imagen2, 0, 0, 640, 480);
  textSize(30);
  fill (243, 255, 0);
  text("Pelicula estadounidense de 1994 \n De genero:comedia negra y crimen", posX2,posY);
  posX2=posX2+2;
  posY=posY-2;
}
else if(contador > 820 && contador < 1200) { 
image(imagen3, 0, 0, 640, 480);
textSize(30);
fill (243, 255, 0);
text("John Travolta \n Uma Thurman \n Samuel L. Jackson \n Harvey Keitel \n Bruce Willis \n Tim Roth", posX3, posY2);
posY2=posY2+2;
}
else if(contador >1200 && contador < 1500) {
  image(imagen4, 0, 0, 640, 480);
  textSize(30);
  fill (243, 255, 0);
  text("Gracias por ver", posX4, posY3);
fill (255, 0, 0);
rect (220, 240, 200, 100);
fill (3, 1, 1);
text ("reiniciar", 320, 280);
}
}
void mousePressed(){
  if(mouseX > 220 && mouseX < 420 && mouseY > 240 && mouseY < 340) {
    posX=920;
    posX2=10;
    posY=480;
    posX3=320;
    posY2=0;
    posX4=320;
    posY3=220;
    contador = +1;
  }
}
  
