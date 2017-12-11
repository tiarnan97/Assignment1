float speed = 0;
int movingSpeed = 0;
float kph;
PFont mono;

Star[] stars = new Star[450];

void setup() {
  size(1500,900);
  for (int i=0; i<stars.length; i++){
    stars[i] = new Star();
  }
}

void mousePressed(){
  if (kph >= 88) {
    speed =200;
    kph = 0;
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
  
  mono = loadFont("font.ttf");
  fill(255,255,0);
  textSize(45); //speedometer
  textFont(mono);
  text(kph,width/2,800);
  kph += 1;
  }