function Bunny(x, y){
  this.x = x;
  this.y = y;
  this.diameter = 30;
  
  this.display = function(c){
    stroke(0);
    strokeWeight(3);
    fill(c);
    ellipse(this.x, this.y, this.diameter, this.diameter);
  }
}