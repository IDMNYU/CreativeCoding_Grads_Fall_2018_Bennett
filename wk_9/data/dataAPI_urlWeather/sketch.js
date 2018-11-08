var weatherData;
var temp;
var font;
var current;

function preload() {
  //weatherData = loadJSON("data/test.json");
  //var url = 'http://api.openweathermap.org/data/2.5/weather?zip=11201,us&APPID=3e70b996f07e3fab50b02acbcd0576bc';
  var url = 'http://api.openweathermap.org/data/2.5/weather?units=imperial&zip=11201,us&APPID=3e70b996f07e3fab50b02acbcd0576bc';
  weatherData = loadJSON(url);
  font = loadFont('data/font.otf');
  
}

function setup() {
  createCanvas(500, 500);
  background(0);
  temp = getTemp(weatherData);
  current = getCurrentConditions(weatherData);
  console.log(temp);
}


function draw() {
  noStroke();
  fill(200, 53, 148);
  ellipse(temp, height / 2, 50, 50);
  
  fill(255);
  textFont(font);
  textSize(36);
  text(current, 10, 50);
  
  text(temp, temp, height/2 - 80);
  
}


function getTemp(data) {
 
  var main = data.main;
  var t = main.temp;
  return t;
  //return data.main.temp;


}

function getCurrentConditions(data){
  var weather = data.weather;
  var info = weather[0];
  var currently = info.description;
  //console.log(currently);
  return currently;
}