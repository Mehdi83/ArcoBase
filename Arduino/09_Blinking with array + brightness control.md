
int pinArray[]={3,5,6,9}; // pins number


int timer=2; //delay

int l=sizeof(pinArray)/sizeof(int);

void setup() {
   Serial.begin(9600);
//   Serial.print(l);


    for ( int i=0; i<l;i++)
    {
      pinMode(pinArray[i], OUTPUT); // (pin number, OUTPUT)
     }
 
}

void loop() {
  int i;
  int j;

  
  for( i=0;i<l;i++)
  {  
    /// turn light on from 0 to 3
      for (j=0;j<=153;j++)
      {
      analogWrite(pinArray[i],j);
  //    j=j+10;
      delay(timer);
  //          Serial.print("here 01 ");Serial.print(i);Serial.print(" : ");Serial.println(j);
      
    
      }

    //turn OFF i led and then go next 
    for (j=153;j>=0;j--)
    {
      analogWrite(pinArray[i],j); 
//      Serial.println("here OFF ");
//      delay(5);
    }
  }

// revers from last to first

   for(i=2;i>=1;i--)
  {
      for (j=153;j>=0;j--)
    {
//      Serial.print("here 02 ");Serial.print(i);Serial.print(" : ");Serial.println(j);
    analogWrite(pinArray[i],j);
//    j=j-10;
    delay(timer);
    }
   
  }
//  for(i; i<l;i++){
//    digitalWrite(pinArray[i], 0);}

}