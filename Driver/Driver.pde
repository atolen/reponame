String[][] elements;
PFont f;
PFont x;
boolean react;
boolean browse;


void settings() {
  size(700,700);
}


void setup() {
  background(53,227,170);
  f = createFont("Ayuthaya",50,true);
  textFont(f, 50);
  fill(215,53,227);
  textAlign(CENTER);
  text("Let's Get Chemical!",width/2,150);
  x = createFont("Ayuthaya", 35, true);
  browse = false;
  react = false;
 }


void makeData() {
  elements = new String[118][4];
  Table table = loadTable("el_csv.csv");
  for (int i = 0; i < elements.length; i++){
    for (int j =0; j < elements[0].length;j++){
      elements[i][j] = table.getString(i,j);
    }
  }
<<<<<<< HEAD
  // Load text file as a string
 /* String[] data = loadStrings("el_csv.txt");
  String[] dataM = split(data[0],'\n');
  String[][] finalMat = new String[118][4];
  for (int i = 0; i < dataM.length; i++){
    finalMat[i] = split(dataM[i],'\t');
  }
  elements = finalMat;*/
  
  f = createFont("Ayuthaya",10,true);

  textFont(f, 10);
 
  rect(width/2-175,height/2-75,250, 450);
    fill(215,53,227);
  for (int i = 1; i < elements.length; i++){
    for (int j =0; j < elements[0].length;j++){
      text(elements[i][j],width/2 - (j*50),250+(i*50));
    }
  }
      
}  
void draw() {  
  textFont(x, 35);
  fill(107,22,245);
  textAlign(CENTER);
  text("Browse The Elements", width/2, 350);
  
  textFont(x, 35);
  fill(107,22,245);
  textAlign(CENTER);
  text("React!", width/2, 500);  
  
  noFill();
  rect(150,450,400,100);//React
  rect(100,300,500,100);//Browse  
 makeData();
  
  
  if (browse) {
<<<<<<< HEAD
    //open brows page
  }
 
  if (react) {
     //open react page  
=======
    Browse lala = new Browse();
  }
 
  if (react) {
   Reactions poe = new Reactions();
>>>>>>> bed523c2f01e0fedd4ceae927af3af0d8ad98ef5
  }
  
}


  void mouseClicked() {
    if (mouseX >= 150 && mouseX <= 550 && mouseY >= 450 && mouseY <= 550 ) {
       react = true;        
    }
    else if ( mouseX >= 100 && mouseX <= 600 && mouseY >= 300 && mouseY <= 400) {
       browse = true; 
    }
}
