float speed = 0;
int movingSpeed = 0;

Star[] stars = new Star[450];

void setup() {
  size(1500,900);
  for ( int i=0; i<stars.length; i++){
    stars[i] = new Star();
  }
}

void draw(){
  translate(width/2,height/2); //For a centerpoint with stars
  background(0);
  
}