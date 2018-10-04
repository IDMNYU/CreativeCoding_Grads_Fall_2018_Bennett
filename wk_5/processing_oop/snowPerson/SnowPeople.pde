class SnowPeople {
    
  //int x;
  //int y;  // global to the class
  int xLoc;
  int yLoc;
  
  SnowPeople(int x_, int y_) {  // constructor functions 
                                //set local variables
   xLoc = x_;   // setting variables of the class with values
   yLoc = y_;
   
  }
  
  void display( color skin){  // this is method
     //x = xLoc;
     //y = yLoc;
    int yLower = yLoc + 50;
    int yHigher = yLoc - 50;
    fill(skin);
    noStroke();
    ellipse(xLoc, yHigher, 50, 60);
    ellipse(xLoc, yLower, 50, 100);
    ellipse(xLoc, yLoc, 50, 80);
  }
  
  void run(int amount){
    xLoc = xLoc + amount;
    
    if(xLoc > width){
      
      xLoc = 0;
    }
    
    
  }
  
}
