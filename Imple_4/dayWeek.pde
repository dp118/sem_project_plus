
void checkNewDay(){
println("After: " + dayRef +"\n"+"Nhour: "+numHour);
  if(numHour>=23){//to get 8 hours of sleep, so they can wake up at 7
    newDay();
    Energy+=1;
    numHour = 6;
    
  }
}
void newDay(){
  numHour =6;  
  println("Prev: " + dayRef);
  if (dayRef>6){
    rectMode(CENTER);
  fill(48,48,48);
  noStroke();
  rect(width/2,height*(.07),width*.2,height*.09);  
  
    dayRef=0;
  }
  else{
    rectMode(CENTER);
  fill(48,48,48);
  noStroke();
  rect(width/2,height*(.07),width*.2,height*.09);  
      dayRef++;
  }
  
  
println("After: " + dayRef);

}
//display Date under clock
void displayDay(){
  fill(255);
  textSize(20);
  textAlign(CENTER);
  if (dayRef>6){
    dayRef=0;
    week++;
    text("Week 2: Final Week", width*.9,height*(.08));
    
  }
      text(day[dayRef], width/2,height*(.08));

}

//DEMO ENDING
void checkEnd(){
 if (week>2){
  rectMode(CENTER);
  fill(48);
  rect(width/2,height/2,width,height); 
  textAlign(CENTER);
  fill(255);
  text("End of the Semester\nYour Final Grades\nClass1: #\nClass2: #\nClass3: #\nTotal GPA: #.##", width/2,height*.4);
   image(dog, width*.65, height*.3, 300,260);
 }
  
}


//Day Ignore before Demo 
void dayWeek(){

  if (dayRef>6){
   dayRef=0; 
   week++;
  }
  if (week>2){
   println("Finished"); 
    
  }
  println(dayRef +"  "+ "Week: "+ week);
  
}
