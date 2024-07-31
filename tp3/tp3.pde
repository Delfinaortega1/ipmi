


//Delfina ortega      https://youtu.be/WmPv2TWb6lo
PImage obra;
int numero = 10; // cuadrados y circulos             
int tamaño = 40; // Tamaño de cuadrado
color negro;
color blanco;

void setup() {
  size(800, 400);
  
 obra = loadImage ( "obra.jpeg" );
 negro= color (0);
 blanco = color (255);
}

void draw() {
  image (obra, 0, 0);
  println (mouseX + " / " + mouseY);

int pantalla = width/2;
 for (int i = 0; i < numero; i++) {
    for (int j = 0; j < numero; j++) {
      int x = j * tamaño + pantalla;
      int y = i * tamaño;
    dibujarCuadrado(i, j);
    
    float nuevoTamaño = calcularTamaño(x + tamaño / 2, y + tamaño / 2);

   
      // Dibujar  círculo
      if ((i + j) % 2 == 0) fill(blanco); 
      else fill(negro); 
      
    ellipse(x + tamaño/2, y + tamaño/2, nuevoTamaño, nuevoTamaño);}
 
    }
}

void mousePressed () {
 negro = color(random(400), random(500), random(600));
 blanco = color(random (255), random (255), random (255));
 
 
  redraw(); // reinicia el dibujo

  
}

void keyPressed (){
    setup();
   
 
   tamaño = 60;
   numero = 30;
   negro = color(0);
   blanco = color (255);
   } 
