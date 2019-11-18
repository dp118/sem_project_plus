//variables -dp
//assume person is in dorm. with food payed off 
int numOfButtons = 6;
int numOfBars = 4;
float twoThirds = 2.0/3.0;
final float BUTTON_WIDTH = width*(4*twoThirds); //400
final float BUTTON_HEIGHT = height/2*(twoThirds); //44.44

//arrays for the buttons -dp
float [] buttonsY= {200,250,300,350,400,450};
String [] buttons= {"Go to Class","Socialize","Eat","Study","Work","Sleep"};
//arrays for bars
float [] barsY= {550,600,650,700};
String [] bars= {"Health","Hunger","Happiness","Grades"};

//variable number percentage in decimal. 
float Health = .1;
float Happy = .1;
float Grade = .75;
float Hunger = .1;
float Wealth = 0;
float Energy = .1;
//bar fill
float[] barFill={Health,Hunger, Happy, Grade};

//ms
PImage img;
//dp
PImage dog;

//new_hour implemented -sazhelle
int numHour;
int rectXClock=100;
int rectYClock=200;

//Boolean to check if random questions are running. To hide the MAIN bars

void setup(){
  size (1024,768);
  background();
  buttons(); 
  drawBars(); 
  textForBars();
  //placement for actual dog pic
  dog = loadImage("true grits.png");
  img = loadImage("logo.png");
  print(width-(BUTTON_WIDTH/3));
  image(img, BUTTON_HEIGHT, BUTTON_HEIGHT, BUTTON_WIDTH, BUTTON_HEIGHT*3); 
  image(dog, (width-BUTTON_WIDTH)/2, 2*BUTTON_HEIGHT, BUTTON_WIDTH, BUTTON_HEIGHT*10);
}

//repeatedly checks if mouse is clicked -dp
void draw(){
    barsFill();
    mousePressed();   
    //sazhelle
    displayClock(); 
}

//creates the buttons -dp
void buttons(){
 for(int i = 0; i < numOfButtons; i++){  
   strokeWeight(3);
   rect(BUTTON_HEIGHT,buttonsY[i], BUTTON_WIDTH, BUTTON_HEIGHT,10);
   textAlign(CENTER,BOTTOM);
   textSize(30);
   text(buttons[i], BUTTON_HEIGHT+(BUTTON_WIDTH/2),buttonsY[i]+BUTTON_HEIGHT);
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
  rect(width/2,height*(.04),width*.1,height*.05);  
  numHour++;
   if(numHour>23){
   numHour=0; 
  }
}

//when button is clicked, it does a thing -dp
void mouseClicked (){
 for(int i = 0; i < numOfButtons; i++){ 
   if ((mouseY>=buttonsY[0])&&((mouseX-BUTTON_HEIGHT<=BUTTON_WIDTH) && (mouseY-buttonsY[i]<=BUTTON_HEIGHT))){
     float textY = 2*twoThirds*375;
        text (buttons[i],width*twoThirds+BUTTON_WIDTH,2*twoThirds*buttonsY[i]);//this is still a lil iffy -dp//this is still a lil iffy -dp
        textY += 100;
        //input algorithms here and/or separate functions for each choice
        //sazhelle new hour
        newHour();
        break;
       }
       if((mouseY>=buttonsY[0])&&(mouseY-buttonsY[0]<=BUTTON_HEIGHT)){
         goToClass();
        }
       if((mouseY>=buttonsY[1])&&(mouseY-buttonsY[1]<=BUTTON_HEIGHT)){
         socialize();
        }
       if((mouseY>=buttonsY[2])&&(mouseY-buttonsY[2]<=BUTTON_HEIGHT)){
         eat();
        }
        if((mouseY>=buttonsY[3])&&(mouseY-buttonsY[3]<=BUTTON_HEIGHT)){
         study();
        } 
        if((mouseY>=buttonsY[4])&&(mouseY-buttonsY[4]<=BUTTON_HEIGHT)){
         work();
        }
        if((mouseY>=buttonsY[5])&&(mouseY-buttonsY[5]<=BUTTON_HEIGHT)){
         sleep();
        }
    }
}

void drawBars(){
  for(int i = 0; i < numOfBars; i++){   
   rect(BUTTON_HEIGHT*2,barsY[i],BUTTON_WIDTH*4*twoThirds,BUTTON_HEIGHT);   
 }
}

//Fill for inside 
void barsFill(){
 for(int i = 0; i < numOfBars; i++){   
   fill(255,200,0);
   rectMode(CORNER);
   rect(BUTTON_HEIGHT*2,barsY[i],barFill[i]*(BUTTON_WIDTH*4*twoThirds),BUTTON_HEIGHT);   
 }
}

void textForBars(){
  fill(255);
  for(int i = 0; i < numOfBars; i++){  
   text (bars[i],width-(BUTTON_WIDTH/3),barsY[i]+BUTTON_HEIGHT);
  }
}

//sazhelle 
//Chance Function
float chance(){
 float num = (float)Math.random() * 100;
 return num;
  
}

void goToClass(){
  for (int i=0;(mouseY>=buttonsY[i])&&(mouseY-buttonsY[i]<=BUTTON_HEIGHT);){
  fill(0);
  rectMode(CORNER);
  rect(BUTTON_HEIGHT*2,barsY[3],barFill[3]*(BUTTON_WIDTH*4*twoThirds),BUTTON_HEIGHT);
  Grade+=.1;
  Happy-=.1;
  break;
  }
}

void socialize(){
  for (int i=1;(mouseY>=buttonsY[i])&&(mouseY-buttonsY[i]<=BUTTON_HEIGHT);){
  fill(0);
  rectMode(CORNER);
  rect(BUTTON_HEIGHT*2,barsY[3],barFill[3]*(BUTTON_WIDTH*4*twoThirds),BUTTON_HEIGHT);
  Grade+=.1;
  Happy-=.1;
  break;
  }
}

void eat(){
  for (int i=2;(mouseY>=buttonsY[i])&&(mouseY-buttonsY[i]<=BUTTON_HEIGHT);){
  fill(0);
  rectMode(CORNER);
  rect(BUTTON_HEIGHT*2,barsY[3],barFill[3]*(BUTTON_WIDTH*4*twoThirds),BUTTON_HEIGHT);
  Happy+=.5;
  Hunger+=.8;
  break;
  }
}

//Student Study
void study(){
  for (int i=3;(mouseY>=buttonsY[i])&&(mouseY-buttonsY[i]<=BUTTON_HEIGHT);){
  fill(0);
  rectMode(CORNER);
  rect(BUTTON_HEIGHT*2,barsY[3],barFill[3]*(BUTTON_WIDTH*4*twoThirds),BUTTON_HEIGHT);
  Grade+=.05;
  Happy-=.2;
  break;
  }
}

void work(){
  for (int i=4;(mouseY>=buttonsY[i])&&(mouseY-buttonsY[i]<=BUTTON_HEIGHT);){
  fill(0);
  rectMode(CORNER);
  rect(BUTTON_HEIGHT*2,barsY[3],barFill[3]*(BUTTON_WIDTH*4*twoThirds),BUTTON_HEIGHT);
//money???
  break;
  }
}

void sleep(){
  for (int i=5;(mouseY>=buttonsY[i])&&(mouseY-buttonsY[i]<=BUTTON_HEIGHT);){
    fill(0);
    rectMode(CORNER);
    rect(BUTTON_HEIGHT*2,barsY[3],barFill[3]*(BUTTON_WIDTH*4*twoThirds),BUTTON_HEIGHT);
    if(numHour>=23){//to get 8 hours of sleep, so they can wake up at 7
    Energy+=1;
    }
  /*  else if(){// each hour past midnight decreases energy, possibly exponentially
    }
   }
   */
  break;
  }
}
