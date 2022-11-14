int red = 11;
int green = 10;
int blue = 9;

void setup() {
  pinMode(red, OUTPUT);
  pinMode(green, OUTPUT);
  pinMode(blue, OUTPUT);
}

void loop() { 
   // red
  analogWrite(red,255);
  analogWrite(green,0);
  analogWrite(blue,0);
  delay(1000);
  
  //green
  analogWrite(red,0);
  analogWrite(green,255);
  analogWrite(blue,0);
  delay(1000);
  //blue
  analogWrite(red,0);
  analogWrite(green,0);
  analogWrite(blue,255);
  delay(1000);

  //yellow
  analogWrite(red,255);
  analogWrite(green,255);
  analogWrite(blue,0);
  delay(1000);

  //purpul
  analogWrite(red,255);
  analogWrite(green,0);
  analogWrite(blue,255);
  delay(1000);

  //sky
  analogWrite(red,0);
  analogWrite(green,255);
  analogWrite(blue,255);
  delay(1000);

  //white_blue
  analogWrite(red,255);
  analogWrite(green,255);
  analogWrite(blue,255);
  delay(1000);

  //white
  analogWrite(red,255);
  analogWrite(green,110);
  analogWrite(blue,120);
  delay(1000);


}