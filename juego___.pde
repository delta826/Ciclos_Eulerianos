int coor_x_mouse=0;
int coor_y_mouse=0;
int opcion_menu=0;                                
int [][] matriz_coordenadas=new int [7][7];
PImage vector;

int borrame;

int numero_nodo=1;
int coorx1, coory1;
int nodo=1;
boolean bandera=false;                                //se activa si se selecciona un segundo vértice
boolean bandera2_mclicked=false;                    //para no seguir en el loop cuando el if mouse_clicked se haga verdadero.

   boolean pick(int x, int y, int derecha, int izquierda, int bajo, int alto) {
    return (x>=derecha && x<=izquierda && y>=bajo && y<=alto);
  }

void mouseClicked() {
 coor_x_mouse=mouseX;       //Variables que guardan posición del mouse cuando se presiona interseccion.
 coor_y_mouse=mouseY;
 switch(opcion_menu){
   case 0:
   if((((coor_x_mouse>=480)&&(coor_x_mouse<=880)) && ((coor_y_mouse>=250&&(coor_y_mouse<=340))))){
     opcion_menu=1;
     }else if( ((coor_x_mouse>=480)&&(coor_x_mouse<=880)) && ((coor_y_mouse>=360&&(coor_y_mouse<=450)))){
       opcion_menu=2;
     }else if(((coor_x_mouse>=480)&&(coor_x_mouse<=880)) && ((coor_y_mouse>=470&&(coor_y_mouse<=560)))){
       opcion_menu=3;
     }
   break;
     
   case 2:
    bandera2_mclicked=true;  
   // if(((coor_x_mouse>=40)&&(coor_x_mouse<=280)) && ((coor_y_mouse>=350)&&(coor_y_mouse<=420)))){
   //}
   break;
 }          
}

void tablero_creditos(){
 background(247,226,185);
 PImage icono;
 icono=loadImage("ciclos.png");        //Imagen de fondo del menu.
 image(icono,80,220);
 vector=loadImage("vector.jpg");        //Imagen de fondo del menu.
 vector.resize(width, height);
 PFont fuente_creditos= createFont("Cambria Bold",30);
 textFont(fuente_creditos);
 text("Diseño y Programación:", 350, 160);
 text("Melinda Durán Michaels", 400, 220);
 text("Materia:", 350, 300);
 text("Programación Orientada a Objetos", 400, 360); 
 text("Universidad Nacional de Colombia.", 350, 440);
 line(80,500,880,500);
 PFont fuente_titulo= createFont("Palatino Linotype Italic",70);
 textFont(fuente_titulo);
 text("Ciclos Eulerianos", 250, 560);
       
 }



void setup(){
  
  size(960,630);
  background(247,226,185);
  PImage icono;
  icono=loadImage("ciclos.png");        //Imagen de fondo del menu.
  image(icono,120,370);
  //---------
  for(int i=0;i<7;i++){
   for(int j=0;j<7;j++){              //MATRIZ CON VALORES EN 0 DE CADA POSICIÓN
     matriz_coordenadas[i][j]=0;
  }
 }
  //----------MENU
  fill(255,255,255);        //titulo
  PFont fuente_titulo= createFont("Palatino Linotype Italic",100);
  textFont(fuente_titulo);
  text("Ciclos Eulerianos", 140, 180);  
  line(80,200,880,200);
  fill(255,71,35);          //opciones del menu
  rect(480, 250, 400, 90);
  fill(0);
  PFont fuente_1= createFont("Cambria Bold",34);
  textSize(70);
  textFont(fuente_1);
  text("Iniciar Partida", 520, 310);
  fill(255,127,73);  
  rect(480, 360,400, 90);
  fill(0);
  text("Diseña más niveles", 520, 420);
  fill(255,160,73);  
  rect(480, 470,400, 90);
  fill(0);
  text("Créditos", 520, 530);
}
    
  
void draw(){
switch(opcion_menu) {
 case 1: //INICIAR PARTIDA
   
   
 break;
    
 case 2: //MODO DISEÑO
    
  
             
 break;
   
 case 3: //CREDITOS
  tablero_creditos();
 break;
    }          
}