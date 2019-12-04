float twoThirds = 2.0/3.0;

int numOfOptions=3;
int numOfQuestions=1;
float question_prob=.01;
float question;
float [] optionsY= {200,250,300};
final float BUTTON_WIDTH = width*(4*twoThirds); //about 267
final float BUTTON_HEIGHT = height/2*(twoThirds); //33.33

void setup(){

size (1024,768);
rectMode(CORNER);
background();
Questions();
}
void background(){
 background(255);
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

void draw(){
//Question q = new Question();
  // q.QuestionPick();
  // q.option();
  
}



void Questions(){
   stroke(255,200,0);
   strokeWeight(3);
   fill(0);
   rectMode(CORNER);
   rect(width*.34,height*.01,330,350); 
   for(int i = 0; i < numOfOptions; i++){   
   fill(48);
   rect((width-BUTTON_WIDTH)/2,optionsY[i],BUTTON_WIDTH,BUTTON_HEIGHT,10); 
   fill(255);
   textAlign(CENTER,BOTTOM);
   textSize(30);
   text(optionsY[i], BUTTON_HEIGHT+(BUTTON_WIDTH/2),optionsY[i]+BUTTON_HEIGHT);
   Question q = new Question();
   q.QuestionPick();
  // q.Question();
  // text(name + answer1+ answer2 +answer3, BUTTON_HEIGHT+(BUTTON_WIDTH/2),BUTTON_HEIGHT);
  }
                          
 
}
