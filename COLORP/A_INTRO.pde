void intro() {
//mega.rewind();
//reset();
mega.play();

  //gif
  image(gif[f], 0, 0, width, height);
  f++;
  if (f==nof) f=0;

  textSize(100);
  fill(colors[randomColor]);
  rotateX(PI/4);
  text("COLOR MATCH", width/2, height/4);

  //begin button
  tactile(550, 500, 150, 80);
  fill(colors[randomColor]);
  rect(550, 500, 150, 80, 100);
  stroke(0);
  fill(255);
  textSize(40);
  text("BEGIN", 625, 540);
}


void introClicks() {
if(rectclicked(550, 500, 700, 580))   mode=GAME;


}
