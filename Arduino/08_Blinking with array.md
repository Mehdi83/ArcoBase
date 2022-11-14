
int pinArray[]={3,5,6,9}; // pins number


int timer=50; //delay
int l=sizeof(pinArray)/sizeof(int);

void setup() {
   Serial.begin(9600);
   Serial.print(l);
    for ( int i=0; i<6;i++)
    {
      pinMode(pinArray[i], OUTPUT); // (pin number, OUTPUT)
     }
 
}

void loop() {
  for(int i=0;i<l-1;i++)
  {
    analogWrite(pinArray[i],30);
    delay(timer);
    digitalWrite(pinArray[i],LOW);
    delay(timer);
  }

   for(int i=3;i>=1;i--)
  {
    analogWrite(pinArray[i],15);
    delay(timer);
    digitalWrite(pinArray[i],LOW);
     delay(timer);
    
    
  }

}