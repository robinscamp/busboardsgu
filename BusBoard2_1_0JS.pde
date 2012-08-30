PFont fontA;
int TerminalBarHT = 74;
int KeepHeight = 0;

String terminalName ="Terminal: True Blue";

void setup() {
  size(940, 780);
  noStroke();
  background(#f6f6f6);
  fontA= loadFont("ArialNarrow-48.vlw");
}


void draw() {

  textFont(fontA, 32);
  fill(0);
  text("BusBoard JavaScript vb3.0.0",0,32);
  textSize(20);
  text("This app is in development for use on all devices with a browser and HTML5 capabilities",0,64);
  
  //Terminal Bar Display Heights and formatting
  fill(0);
  rect(0,TerminalBarHT-KeepHeight, 940,30);
  fill(255);
  textSize(25);
  text(terminalName, 0,TerminalBarHT + 25 - KeepHeight);
  
  //Time formatting
  String seconds=second();
  String minutes=minute();
  if (second()<10){
    seconds= "0"+second();
  }
  if (minute()<10){
    minutes= "0"+minute();
  }  
  text(hour()+":"+ minutes +":" + seconds, 840,TerminalBarHT + 25 - KeepHeight);
}


