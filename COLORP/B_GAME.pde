


void game() {

  println(score, lives);
  println(timer);
  println(randomColor, randomWord);
  //mega.rewind();
  //division
  strokeWeight(0);
  fill(0);
  rect(0, 0, width/2, height);
  fill(255);
  rect(width/2, 0, width, height);

  //colors
  textSize(100);
  fill(colors[randomColor], a);
   a=a-0.5;
  text(words[randomWord], x, y);
  
  

  //score, lives, highscore
  textSize(30);
  fill(255);
  text("SCORE: " +score, 100, 50);
  fill(0);
  text("LIVES: " +lives, 700, 50);


  if (lives<0) mode=GAMEOVER;

  timer=timer-0.05;
  //GAME
  if (leftkey==true) {
    generateNewPuzzle();
    if (randomWord>randomColor &&  randomWord<randomColor) {
      score++;
      timer();
      plus.rewind();
      plus.play();
    }
  }
  if (leftkey==true) {
    generateNewPuzzle();
    if (actualmatch()) {
      lives--;
      timer();
    }
  }

  if (rightkey==true ) {
    generateNewPuzzle();
    if (actualmatch()) {
      score++;
      timer();
      plus.rewind();
      plus.play();
    }
  }

  if (rightkey==true) {
    generateNewPuzzle();
    if (randomWord>randomColor && randomWord<randomColor) {
      lives--;
      timer();
    }
  }





  if (timer<5) {
    
    text("timer" +timer, width/2, height/2);
  }
  if (timer<0) {
    mode=GAMEOVER;
  }
}

void gameClicks() {
  if (mouseX >0& mouseX <50 && mouseY>0 && mouseY<50) {
    mode=PAUSE;
  }
}

boolean actualmatch() {
  return randomColor==randomWord;
}



void generateNewPuzzle() {
  randomWord=(int) random(0, 6);
  randomColor=(int) random(0, 6);
  x= (int)random(0, 600);
  y=(int) random(0, 500);
  //if (randomMatch<0.5) {
  //  randomColor=randomWord;
  //} else
  //  while (randomColor==randomWord) {
  //    random(0, 6);
  //  }
}


void timer() {
  timer=10;
}
