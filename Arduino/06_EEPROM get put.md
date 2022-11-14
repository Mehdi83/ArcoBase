#include <EEPROM.h>

float f = 12.34; // 4 byte
 
byte b = 128;
char c[5] ="mehdi"; // [5 charcter]

float f1;
byte b1;
char c1[5];

int address;

void setup(){
  Serial.begin(9600); 
  
  Serial.print("float size is :"); 
  Serial.println(sizeof(f)); 

  Serial.print("byte size is :"); 
  Serial.println(sizeof(b));

   Serial.print("char size is :"); 
  Serial.println(sizeof(c));
  

  EEPROM.put(address, f);
  address += sizeof(f);   // f =4  .. adress = 0 ... 4+0= address =4
  
  EEPROM.put(address, b);
  address += sizeof(b);

  EEPROM.put(address, c);
  address += sizeof(c);



// print address with value
  address = 0;
  EEPROM.get(address,f1);
  showData(address); // add address to showData
//   Serial.println("hi"); 
   Serial.println(f1); 

  address = 0 + sizeof(f); 
    EEPROM.get(address,b1);
    showData(address); // add address to showData and run showData
     Serial.println(b1); 

      address = 0 +sizeof(f)+sizeof(b);
  EEPROM.get(address,b1);  
  showData(address); // add address to showData
   Serial.println(b1); 


 address = address +sizeof(c);
 

  EEPROM.get(address,c1);  
  showData(address); // add address to showData
   Serial.println(c1); 

}

void showData(int addr)
  {
    Serial.print("data= ");
    Serial.print(addr);
    Serial.print(" ");
  }
  
void loop(){
   
}