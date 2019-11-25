void goToClass(){
  for (int i=0;(mouseY>=buttonsY[i])&&(mouseY-buttonsY[i]<=BUTTON_HEIGHT);){
  fill(0);
  rectMode(CORNER);
  rect(BUTTON_HEIGHT*2,barsY[3],barFill[3]*(BUTTON_WIDTH*4*twoThirds),BUTTON_HEIGHT);
  Grade+=.1;
  Happy-=.1;
  if(Happy<0){
    Happy=0;
  }
  if(Grade>1){
    Grade=1;
    
  }
  checkNewDay();
  break;
  }
}
