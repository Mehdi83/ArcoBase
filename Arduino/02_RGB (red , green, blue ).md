
// give name to each using pin and Input for each color;
// use ~ pin as ANALOG pins 3.5.6.9.10.11
int red = 11;
int green = 10;
int blue = 9;

int  r;
int g;
int b;

void setup() {
	Serial.begin(9600);
	pinMode(red, OUTPUT);
	pinMode(geern, OUTPUT);
	pinMode(blue, OUTPUT);

}

void loop(){
	while(Seiral.available()>0){
	r = Serial.parseInt();  // parseInt = char to int
	g = Serial.parseInt(); // start to scan input for first int and fix it till first str.
	b = Serial.parseInt(); // parseInt is read but just int
	}
	analogWrite(red , r);
	analogWrite(green, g);
	analogWrite(blue, b);
}