int red =  13;  // led pin number
int r;     // input 0/1 from user and save in "r"



void setup(){    // start + inputs + outputs

	Serial.begin(9600) // 9600 mhz  is baund rate = speed rate 

	pinMOde(red , OUTPUT);  // (which pin , what to do ?)  , red = pin13
 }

void loop (){
	while(Serial.available())     // until we have memory bits on Arduino do 
	{
	 r =Serial.read(); // r = input from user 

			if (r == '1')
			{
			digitalWrite(red, HIGH);  // do (pin number, on) //HIGH = 1 = turn on 
			}
			else if (r == '0')
			{
			digitalWrite(red, LOW); // LOW = 0 = turn off
			}
	}
}
	