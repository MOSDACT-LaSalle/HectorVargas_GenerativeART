/*GenART de una cuadricula donde el click del mouse 
indica la posicion de la cadena de cuadrados
*/
 
 //Inicializar variables de posición, frecuencia, sepracion y tamaño
float px =0;
float py;
float ritmo =20;
int side =3;
int fwd = 3;
int size = 50;

//se establece el espacio y el color de fondo 
void setup () {

size (900, 900);
px = 0;
py = height/2;
background (10,50,150);

}

void draw () { //comando principal donde se ejecutan las acciones
fill(2,10); //llenar el fondo de una transparencia
rect(0,0, width, height);
caballo();//ejecutar los calculos de la posicion del cuadro
dance();//imprimir el cuadro
}

void dance (){ //condiciones de impresion del cuadro, color aleatorio y tamaño
fill (random(255),random(200),random(255));
rect (px,py,size,size);

}

void mousePressed() {
    // al hacer click, se actualiza la posicion del triangulo, cambia la frecuencia y el tamaño
   px = mouseX;
   py = mouseY;
   fwd =-1;
   ritmo*=+1;
   size = size +5; 
}

void caballo(){
 if (px > width || px < 0){ //condicion que limita dentro del canvas la posicion(que rebote en las orillas)
     side *=-1;
     } //identficiar posicion X dentro del canvas
   px = px + (ritmo*side);//actualizar posicion siendo alterada por la frecuencia y la distancia en X
   if (py> height || py < 0){
      fwd *=-1;//identficiar posicion Y dentro del canvas
     }
  py= py + (ritmo*0.9*fwd);//actualizar posicion siendo alterada por la frecuencia y la distancia en y
  delay(200);//esperar para ejecutar la siguiente acción
}
