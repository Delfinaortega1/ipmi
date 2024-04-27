

PImage paisaje;

void setup(){
  size(800, 400);
  background(11,118,222);
  
  paisaje = loadImage ("paisaje.jpg");
}
void draw(){
  image(paisaje,0, 0, 400, 400);
noStroke();
println(mouseX + " / " + mouseY);





fill(#71B2ED);
rect(400,136,799,165);

fill(#9DCCF7);
rect(400,197,799,193);

//nubes parte inferior
fill(#E3E8ED);//color nubes
ellipse(800,295,90,20);// nube derecho 1 pasto
ellipse(800,276,40,25); // nube derecha
ellipse(800,260,90,20); // nube derecha



//nubes parte superior medio 
fill(#E3E8ED);//color nubes

ellipse(645,20,160,50);// nube parte arriba 2
ellipse(645,40,180,20);// nube parte arriba  3


//nubes lado derecho superior
ellipse(800,70,80,50);// nube parte arriba 1
ellipse(800,95,250,50);// nube parte arriba 2




//base del arbol
fill(178,164,108);//color tronco
rect(582,280,15,400);//tronco
fill(#B3D362);//color pasto
rect(400,298,799,300  );//pasto


//formas del arbol
ellipse(590,235,38,28);//copa de arbol ultimo circulo
ellipse(590,250,60,28); // copa de arbol
ellipse(590,268,70,25); // copa de abol
ellipse(590,250,60,28); // copa de arbol








}
