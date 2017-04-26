class MoveImg{
  PImage img;
  int posX, posY, speedX, speedY, rad, radSpeed;
  MoveImg(PImage _img, int initX, int initY, int speed){
    img = _img;
    posX = initX;
    posY = initY;
    speedX = speed;
    speedY = speed;
    rad = (int)random(0, 360);
    radSpeed = 1;
  }
  
  void move(){
    posX += speedX;
    posY += speedY;
  }
  
  void update(){
    if(posX < 0 || posX + img.width > width){
      speedX *= -1;
    }
    if(posY < 0 || posY + img.height > height){
      speedY *= -1;
    }
    rad += radSpeed;
  }
  
  void draw(){
    pushMatrix();
    translate(posX + img.width/2, posY + img.height/2);
    rotate(radians(rad));
    image(img, -img.width/2, -img.height/2);
    popMatrix();
  }
}