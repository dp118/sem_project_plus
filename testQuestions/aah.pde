class Question{
  final String[] names = {"You have a big test but your friends want to hang out ","You are running late for your morning class. Do you: ","The homecoming game is coming up "};
   
  final String[] answer1s = {"Study ","Skip breakfast ", "Attend the event "};
  final String[] answer2s = {"Go Out ","Go to class late ","Stay in your dorm "};
  final String[] answer3s  = {"Watch Netflix ","Don't go to Class "," "};
  
  String name = "";
  String answer1 = "";
  String answer2 = "";
  String answer3 = "";
  int i;

  void QuestionPick(){
    i= int(random(0,3));
    
    if (i == 0){
      name = names[0];
      answer1 = answer1s[0];
      answer2 = answer2s[0];
      answer3 = answer3s[0];
    }

    else if (i == 1){
      name = names[1];
      answer1 = answer1s[1];
      answer2 = answer2s[1];
      answer3 = answer3s[1];
    }
  
    else if (i == 2){
      name = names[2];
      answer1 = answer1s[2];
      answer2 = answer2s[2];
      answer3 = answer3s[2];
    }
  }
 /* void option(){
    if (question<=question_prob){
    createQuestions();
   }
    else {
   // image(dog, (width-BUTTON_WIDTH)/2, 2*BUTTON_HEIGHT, 280,280);
    }
   
 }*/

}
