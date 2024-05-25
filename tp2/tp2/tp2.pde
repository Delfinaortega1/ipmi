PImage imagen1, imagen22, imagen34;
int pantalla, tiempo, suma, diametro;
boolean ultimaPantalla;
color colorDelBoton;
int py;
int miVariable=1;
PFont fuenteNueva;

void setup() {
  size(640, 480);
  imagen1 = loadImage ("imagen1.jpg");
  imagen22 = loadImage ("imagen22.jpg");
  imagen34 = loadImage ("imagen34.jpg");
 
  fuenteNueva=loadFont("Utsaah-BoldItalic-18.vlw");
  tiempo = frameCount/2;
  pantalla = 0;
  suma = 2;
  diametro = 50;
  ultimaPantalla = false;
  colorDelBoton = color(255 , 24 , 17);  
}


void draw() {
  if (pantalla == 0) {
 image (imagen1, 0, 0, 640, 480);
 println(miVariable);
    miVariable+=7;
           textSize ( 18);

    fill (21, 9, 9);
    
      textFont(fuenteNueva);

    text("juguemos al uno",miVariable, 20 , 80);
  
  } else if (pantalla == 1) {
    image ( imagen22, 0, 0, 640, 480);
       textSize ( 20);

    fill ( 15 , 28 , 255);
    text("objetivo del juego\n El Uno consiste en competir con otros jugadores con el objetivo \n de ser el primero en quedarse sin cartas.\n El primero que lo haga ganará el juego, mientras que el último que se \nquede sin cartas\n será el perdedor y encargado de repartir nuevamente.", mouseY,mouseX, 300);
   
  } 
  
  else if (pantalla == 2) {
   image(imagen34, 0, 0, 640, 480);
     
   fill (255,0,0);
    text(" .cantidad  minima de jugadores:2 \n .cantidad maxima:20  ", 240, 70); 
     
      fill(colorDelBoton);
      circle(580, 162, diametro);
      textSize(22);
      fill(0);
      
    if (pantalla == 3) {
    image(imagen34, 0, 0, 640, 480);       
    }
  } 

  // tiempo += suma;
  if (ultimaPantalla == false) {
    tiempo = tiempo + suma;
  if (tiempo >= 42 && pantalla != 3) {
    tiempo = 0;
    if (pantalla != 2) {
      pantalla++;
    } else if (pantalla == 2) {
      ultimaPantalla = true;
    } 
   }
  }
}
  
void mouseClicked() {
  push ();
  pantalla++;
  if (ultimaPantalla == true) {
    if (dist( 583 , 162 , mouseX, mouseY) < diametro/2) {
      pantalla = 0;
      tiempo = 0;
      suma = 1;
      ultimaPantalla = false;
      pop ();
    }
  }
}
  //CONDICION PARA BOTÓN CIRCULAR
void mouseMoved() {
  if (ultimaPantalla == true) {
    if (dist(583 , 162 , mouseX, mouseY) < diametro/2) {
     
      colorDelBoton = color(225, 25, 19);
    }   else {
       
      colorDelBoton = color(25, 25, 19);
        textSize ( 10);
        fill ( 225 , 0 ,0 );
         text("Reiniciar", 560, 162); 

    }   
  }
}
