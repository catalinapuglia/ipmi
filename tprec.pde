//catalina puglia tp3
// https://youtu.be/pQovHj8sI-I
int diametroCircle = 20;
int espacioCircle = 25;
PImage f;
boolean mouse;
boolean invertido = false;


void setup() {
  size(800, 400);
  noStroke();
  f = loadImage("imagen.jpeg");
}

void draw() {
  background(50, 88, 53);
  image(f, 0, 0, 400, 400);
 
  dibujarCircle();
}

void keyPressed() {
  if (keyCode == 'S') {
    //mas lejos
   if (diametroCircle>1) {
      diametroCircle-=1;
    }
    if (espacioCircle>15) {
      espacioCircle-=1;
    }
  }

  //reiniciar
  if (key == 'r' || key == 'R') {
    diametroCircle=20;
    espacioCircle=25;
  }
}

void mouseClicked() {
  diametroCircle+=1;
  espacioCircle+=1;
}


    void dibujarCircle() {
      for (int i = 13; i <= height; i += espacioCircle) {
        for (int j = 415; j <= width; j += espacioCircle) {
          float distancia = dist(mouseX, mouseY, j, i);
          float transparenciaRojo = calcularTransparenciaRojo(distancia);
          float transparenciaAzul = calcularTransparenciaAzul(distancia);

          fill(0, transparenciaAzul);
          ellipse(j, i, diametroCircle, diametroCircle);

          if (!invertido) {
            fill(255, 0, 0, transparenciaRojo);
            ellipse(j, i, diametroCircle, diametroCircle);
          }
        }
      }
    }
    float calcularTransparenciaRojo(float distancia) {
      return map(distancia, 0, width / 8, 255, 90);
    }

    float calcularTransparenciaAzul(float distancia) {
      return map(distancia, 0, width / 8, 0, 255);
    }
