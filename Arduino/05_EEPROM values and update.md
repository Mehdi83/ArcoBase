#include <EEPROM.h>

int value;

void setup(){
  Serial.begin(9600); 
  for (int i=0; i < EEPROM.length(); i++) 
  {
   value = EEPROM.read(i); 
   Serial.println(i);
   Serial.print(' \ t');
     Serial.print(value);
   Serial.println();
    }
}


void loop(){
   
}