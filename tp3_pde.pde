//https://youtu.be/pu6AZanX2c4






PImage foto2;
int tamCuadrado;

void setup() {
  size(800, 400);
  background(255);
  foto2 = loadImage("foto2.jpg");
  noLoop(); // Detener el bucle
  tamCuadrado = (width - 400) / 20; // primer tamaño de los cuadrados
}

void draw() {
  image(foto2, 0, 0, width / 2, height);

  int numCua = 20; // Número de cuadrados

  for (int i = numCua; i > 0; i--) {
    // Determina el color
    fill(i % 2 == 0 ? 0 : 255);

    // posición x e y
    int x = 400 + (width - 400 - (i * tamCuadrado)) / 2;
    int y = (height - (i * tamCuadrado)) / 2;

    rect(x, y, i * tamCuadrado, i * tamCuadrado); // Dibuja cada cuadrado

    if (y == height / 2) {
      fill(i % 2 == 0 ? 255 : 0);
      rect(x, y, tamCuadrado, tamCuadrado); // Franja horizontal
    }
  }
}

void mousePressed() {
  // Cambian los cuadrados
  int nuevotamCu = int(random(10, 50));
  tamCuadrado = nuevotamCu;
  redraw(); // reinicia el dibujos
}

void keyPressed() {
  // Reinicia la animación presionando una tecla
  setup();
  redraw(); // reinicia el dibujo
}
float calcularDistancia(float x1, float y1, float x2, float y2) {
  return dist(x1, y1, x2, y2);
}

float mapearValor(float valor, float valorMin, float valorMax, float nuevoMin, float nuevoMax) {
  return map(valor, valorMin, valorMax, nuevoMin, nuevoMax);
}
