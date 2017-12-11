float speed = 0;
int movingSpeed = 0;
float kph;

Star[] stars = new Star[450];

void setup() {
  size(1500,900);
  for (int i=0; i<stars.length; i++){
    stars[i] = new Star();
  }
}

void mousePressed(){
  if (speed ==0) {
    speed =200;
  }
  else {
    speed = 0;
  }
}

void draw(){
  background(0);
  pushMatrix();
  translate(width/2,height/2); //For a centerpoint with stars
  
  for(int i=0; i<stars.length; i++) {
    stars[i].showStars();
    stars[i].moveStars();
  }
  popMatrix();
  fill(192,192,192);
  rect(0,height-height/4,width,height/4); //dashboard 
  }