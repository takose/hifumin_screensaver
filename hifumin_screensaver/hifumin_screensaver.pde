ArrayList<MoveImg> sakes = new ArrayList<MoveImg>();

void setup(){
  fullScreen();
  PImage daiginjoImg = loadImage("daiginjo.png");
  sakes.add(new MoveImg(daiginjoImg, width/2, height/2, 5));
}

void draw(){
  background(0);
  for (MoveImg sake : sakes) {
    sake.update();
    sake.move();
    sake.draw();
  }
}

void mouseMoved(){
  exit();
}

void keyPressed(){
  exit();
}