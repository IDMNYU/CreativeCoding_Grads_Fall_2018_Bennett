int[] list = new int[5];
String[] food = {"bread", "cheese", "tea", "wine" , "fruit"};
  
void setup(){
  size(400, 400);
  background(100, 200, 5);
    for(int i = 0; i < list.length; i++){
    list[i] = floor(random(0, 142));

  }
  
  for(int i = 0; i < list.length; i++){
    println(list[i]);
  }
}

void draw(){

  println(food[3]);
  food[3] = "milk";
  println(food[3]);
  
  
}
