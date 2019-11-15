//variables -dp
int numOfButtons = 6;
int numOfBars = 4;
float twoThirds = 2.0/3.0;
final float BUTTON_WIDTH = width*(6*twoThirds); //400
final float BUTTON_HEIGHT = height*(twoThirds*twoThirds); //44.44

//arrays for the buttons -dp
float [] buttonsX = {BUTTON_HEIGHT,BUTTON_HEIGHT,BUTTON_HEIGHT,BUTTON_HEIGHT,BUTTON_HEIGHT,BUTTON_HEIGHT};//does this seem redundant if they're all the same
float [] buttonsY= {250,300,350,400,450,500};
String [] buttons= {"Go to Class","Socialize","Eat","Study","Work","Sleep"};
//arrays for bars
float [] barsX = {BUTTON_HEIGHT,BUTTON_HEIGHT,BUTTON_HEIGHT,BUTTON_HEIGHT,BUTTON_HEIGHT,BUTTON_HEIGHT}; //same with this??
float [] barsY= {650,700,750,800};
String [] bars= {"Health","Happiness","Grades","Wealth"};

//ms
PImage img;
//dp
PImage dog;

//new_hour implemented -sazhelle
int numHour;

int rectXClock=100;
int rectYClock=200;

void setup(){
  fullScreen();
  background();
  buttons(); 
  textForBars();
  //placement for actual dog pic
  dog = loadImage("true grits.png");
  img = loadImage("logo.png");
}

//repeatedly checks if mouse is clicked -dp
void draw(){
    mousePressed();
    bars();
    image(dog, (width-BUTTON_WIDTH)/2, 2*BUTTON_HEIGHT, BUTTON_WIDTH, BUTTON_HEIGHT*10);
    //sazhelle
    displayClock(); 
    //ms
    image(img, BUTTON_HEIGHT, BUTTON_HEIGHT, BUTTON_WIDTH, BUTTON_HEIGHT*3); 
}

//creates the buttons -dp
void buttons(){
 for(int i = 0; i < numOfButtons; i++){  
   strokeWeight(3);
   rect(buttonsX[i],buttonsY[i], BUTTON_WIDTH, BUTTON_HEIGHT,10);
   textAlign(CENTER,BOTTOM);
   textSize(30);
   text(buttons[i], buttonsX[i]+BUTTON_WIDTH/2,buttonsY[i]+BUTTON_HEIGHT);
   }
}

//makes the layout of the game -dp
void background(){
  background(48,48,48);
  noFill();
  stroke(255,200,0);
  strokeWeight(10);
  rect(0,0,width,height);
  float(height);
  float(width);
  strokeWeight(5);
  line(0,height*twoThirds,width,height*twoThirds);
  line(width/2*twoThirds,0,width/2*twoThirds,height*twoThirds);
  line(width*twoThirds,0,width*twoThirds,height*twoThirds);
}

//sazhelle
void displayClock(){
   
  //text displaying the time, will be in draw since it is updating 
 fill(255);
  textSize(32);
  textAlign(CENTER);
  text(numHour+":00", width/2,height*(.05));
}

//sazhelle
void newHour(){
 //will run inside final button functions to increase the hour by one 
 //0:00 = 12am, once hits 24:00, will reset to 0:00
  //Rectangle to reset the clock 
  rectMode(CENTER);
  fill(48,48,48);
  noStroke();
  rect(width/2,height*(.05),width*.1,height*.05);  
  numHour++;
   if(numHour>23){
   numHour=0; 
  }
}

//when button is clicked, it does a thing -dp
void mouseClicked (){
 for(int i = 0; i < numOfButtons; i++){ 
   if ((mouseX-buttonsX[i]<=BUTTON_WIDTH) && (mouseY-buttonsY[i]<=BUTTON_HEIGHT)){
        text (buttons[i],width*twoThirds+BUTTON_WIDTH,2*twoThirds*buttonsY[i]);//this is still a lil iffy -dp
        //input algorithms here and/or separate functions for each choice
        //sazhelle new hour
        newHour();
        break;
       }
    }
}

//trying to make the fucking bars bcuz the bitch wont send me the code
void bars(){
 for(int i = 0; i < numOfBars; i++){   
   fill(255);
   rect(BUTTON_HEIGHT*2,barsY[i],BUTTON_WIDTH*4*twoThirds,BUTTON_HEIGHT);   
 }
}

void textForBars(){
  for(int i = 0; i < numOfBars; i++){  
   text (bars[i],width-(BUTTON_WIDTH/3),barsY[i]+BUTTON_HEIGHT);
  }
}
