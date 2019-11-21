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
