
float speed = 0;
int movingSpeed = 0;
float kph;
PFont font; 
PImage img;
int i =0;


System[] vitals = new vital[6]
Star[] stars = new Star[450];

void setup() {
  size(1500,900);
  for (int i=0; i<stars.length; i++){
    stars[i] = new Star();
  }
  img = loadImage("DeLorean.jpg");
}

void draw(){
  background(0);
  font = loadFont("Stencil-28.vlw");
  textFont(font, 20);
  
  pushMatrix();
  translate(width/2,height/2); //For a centerpoint with stars
  
  for(int i=0; i<stars.length; i++) {
    stars[i].showStars();
    stars[i].moveStars();
  }
  popMatrix();
  fill(192,192,192);
  rect(0,height-height/4,width,height/4); //dashboard 
  
  fill(255,0,0);
  textSize(30); //speedometer
  text(kph,width-190,880);
  text("Press V to check system vitals",650,850);
  Speedometer();
  image(img, 0,670,300,300);
  tint(50,50,50);

}
  
   void Speedometer(){
      if (kph == 88){
       text("Press K to make the jump to hyperspeed",650,750);
       
      }
      else if(kph < 88) {
        text("building speed to 88kph",650,750);
         kph += 1;
      }
  
  }
  
  void keyPressed() {
    if (key == 'k')
    {
      if (kph >= 88) {
        speed =200;
        kph = 0;
       }
       else {
         speed = 0;
        }
        Speedometer();
    }
    
    if (key == 'v') //to see systems vitals
    {
    }
  }