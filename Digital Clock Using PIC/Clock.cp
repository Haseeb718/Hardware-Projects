#line 1 "C:/Users/usama/OneDrive/Documents/University/Semester 5/Microporcocessors & Microcontroller Lab/Complex Engineering Activity/Clock.c"

sbit LCD_RS at RB0_bit;
sbit LCD_EN at RB1_bit;
sbit LCD_D4 at RB2_bit;
sbit LCD_D5 at RB3_bit;
sbit LCD_D6 at RB4_bit;
sbit LCD_D7 at RB5_bit;

sbit LCD_RS_Direction at TRISB0_bit;
sbit LCD_EN_Direction at TRISB1_bit;
sbit LCD_D4_Direction at TRISB2_bit;
sbit LCD_D5_Direction at TRISB3_bit;
sbit LCD_D6_Direction at TRISB4_bit;
sbit LCD_D7_Direction at TRISB5_bit;

char text(int a){
 switch(a){
 case 0:
 return '0';
 case 1:
 return '1';
 case 2:
 return '2';
 case 3:
 return '3';
 case 4:
 return '4';
 case 5:
 return '5';
 case 6:
 return '6';
 case 7:
 return '7';
 case 8:
 return '8';
 case 9:
 return '9';
 }
 }

int second= 0;
int minute = 0;
int hour = 0;
unsigned short set;
unsigned short set_state=0;
int i = 0;
char *time = "00:00:00";
void main() {
 TRISC = 0x03 ;
 PORTC = 0X00;
Lcd_Init();
Lcd_Cmd(_LCD_CLEAR);
Lcd_Cmd(_LCD_CURSOR_OFF);
Lcd_Out(1,3,"Developed By");
Lcd_Out(2,1,"MINA TECHNOLOGY");
delay_ms(2000);
Lcd_Cmd(_LCD_CLEAR);
Lcd_Out(1,3,"Digital Clock");
hour = 1;

 while(1){
 set = 0;
 if(PORTC.F0==1){
 delay_ms(100);
 if(PORTC.F0==1){
 set_state++;
 if(set_state>=4) set_state = 0;
 }
 }
 if(set_state){
 if(PORTC.F1==1){
 set = 1;
 }
 if(set_state && set){
 switch(set_state){
 case 1:
 hour = hour + set;
 break;
 case 2:
 minute = minute + set;
 break;
 case 3:
 second = 0;
 break;

 }
 }
 }


 second++;
 if(second>=60){
 minute++;
 second = 0;
 }
 if(minute>=60){
 hour++;
 minute = 0;
 }
 if(hour>=13) {
 hour = 1;
 i = ~i;
 }
 time[0] =text(hour / 10);
 time[1] =text(hour % 10);

 time[3] = text(minute / 10);

 time[4] = text(minute % 10 );
 time[6] = text(second / 10);
 time[7] = text(second % 10);
 Lcd_Out(2,4,time);
 if(i==0)Lcd_Out(2,14,"AM");
 if(i)Lcd_Out(2,14,"PM");
 delay_ms(1000);
 }}
