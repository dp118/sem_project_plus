//here we set up the classses and schedule and stuff
//Have an array make a random class schedule, ranging from 8am - 8pm, no 12pm
int[] classHour = new int[3];
String[] classNames = {"MATH 151", "CSMS 201", "ECON 101"};


void randClass(){
  for (int i =0; i<classHour.length; i++){
    int rand = (int)(Math.random() * (20-8+1)) + 8; 
    classHour[i]=rand;
    println(classHour[i]);
  }
}

void intro(){
 //Welcome
 //This is your class schedule 
  //Make sure you go to class everydat and get ready for the finals in 2 weeks
  rectMode(CENTER);
  fill(48);
  noStroke();
  rect(width/2,height/2,width,height);
  textAlign(CENTER);
  textSize(50);
  fill(255);
  text("WELCOME", width/2, height*.1);
  textSize(30);
  text("This is your class schedule", width/2, height/2);
  
  
  
  
}
