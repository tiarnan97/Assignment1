class Star{
  
  int x;
  int y;
  float size = random(1,10);
  float z; 
  float sx,sy;
  float px,py,pz; //each star is like a molecule 
    
  Star() {
    z = random(width);
    reset();
  }
  
  void reset(){ //resets the initial position of the stars after going to warp speed
    x = (int)random(-width/2,width/2);
    y = (int)random(-height/2,height/2);
    pz = z;
  }
  
  boolean Reset2(){
    if(z < 1){
      return true;
    } else {
      return false;
    }
  }
  
   void moveStars(){
      z = z - speed;
      if(Reset2()){
        z = width;
        reset();
      }
    }
  
  void showStars(){
    noStroke();
    fill(255);
     sx = map(x / z,0,1,0,width);
     sy = map(y / z,0,1,0,height);
     ellipse(sx,sy,size,size); //the individual stars
     
     px = map(x / pz,0,1,0,width); 
     py = map(y / pz,0,1,0,height);
     
     pz = z;
     stroke(220,225,242);
     strokeWeight(size);
     line(px,py,sx,sy); //give the illusion of travelling fast
  }
  
}

   