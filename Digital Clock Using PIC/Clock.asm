
_text:

;Clock.c,16 :: 		char text(int a){
;Clock.c,17 :: 		switch(a){
	GOTO       L_text0
;Clock.c,18 :: 		case 0:
L_text2:
;Clock.c,19 :: 		return '0';
	MOVLW      48
	MOVWF      R0+0
	GOTO       L_end_text
;Clock.c,20 :: 		case 1:
L_text3:
;Clock.c,21 :: 		return '1';
	MOVLW      49
	MOVWF      R0+0
	GOTO       L_end_text
;Clock.c,22 :: 		case 2:
L_text4:
;Clock.c,23 :: 		return '2';
	MOVLW      50
	MOVWF      R0+0
	GOTO       L_end_text
;Clock.c,24 :: 		case 3:
L_text5:
;Clock.c,25 :: 		return '3';
	MOVLW      51
	MOVWF      R0+0
	GOTO       L_end_text
;Clock.c,26 :: 		case 4:
L_text6:
;Clock.c,27 :: 		return '4';
	MOVLW      52
	MOVWF      R0+0
	GOTO       L_end_text
;Clock.c,28 :: 		case 5:
L_text7:
;Clock.c,29 :: 		return '5';
	MOVLW      53
	MOVWF      R0+0
	GOTO       L_end_text
;Clock.c,30 :: 		case 6:
L_text8:
;Clock.c,31 :: 		return '6';
	MOVLW      54
	MOVWF      R0+0
	GOTO       L_end_text
;Clock.c,32 :: 		case 7:
L_text9:
;Clock.c,33 :: 		return '7';
	MOVLW      55
	MOVWF      R0+0
	GOTO       L_end_text
;Clock.c,34 :: 		case 8:
L_text10:
;Clock.c,35 :: 		return '8';
	MOVLW      56
	MOVWF      R0+0
	GOTO       L_end_text
;Clock.c,36 :: 		case 9:
L_text11:
;Clock.c,37 :: 		return '9';
	MOVLW      57
	MOVWF      R0+0
	GOTO       L_end_text
;Clock.c,38 :: 		}
L_text0:
	MOVLW      0
	XORWF      FARG_text_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__text37
	MOVLW      0
	XORWF      FARG_text_a+0, 0
L__text37:
	BTFSC      STATUS+0, 2
	GOTO       L_text2
	MOVLW      0
	XORWF      FARG_text_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__text38
	MOVLW      1
	XORWF      FARG_text_a+0, 0
L__text38:
	BTFSC      STATUS+0, 2
	GOTO       L_text3
	MOVLW      0
	XORWF      FARG_text_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__text39
	MOVLW      2
	XORWF      FARG_text_a+0, 0
L__text39:
	BTFSC      STATUS+0, 2
	GOTO       L_text4
	MOVLW      0
	XORWF      FARG_text_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__text40
	MOVLW      3
	XORWF      FARG_text_a+0, 0
L__text40:
	BTFSC      STATUS+0, 2
	GOTO       L_text5
	MOVLW      0
	XORWF      FARG_text_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__text41
	MOVLW      4
	XORWF      FARG_text_a+0, 0
L__text41:
	BTFSC      STATUS+0, 2
	GOTO       L_text6
	MOVLW      0
	XORWF      FARG_text_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__text42
	MOVLW      5
	XORWF      FARG_text_a+0, 0
L__text42:
	BTFSC      STATUS+0, 2
	GOTO       L_text7
	MOVLW      0
	XORWF      FARG_text_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__text43
	MOVLW      6
	XORWF      FARG_text_a+0, 0
L__text43:
	BTFSC      STATUS+0, 2
	GOTO       L_text8
	MOVLW      0
	XORWF      FARG_text_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__text44
	MOVLW      7
	XORWF      FARG_text_a+0, 0
L__text44:
	BTFSC      STATUS+0, 2
	GOTO       L_text9
	MOVLW      0
	XORWF      FARG_text_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__text45
	MOVLW      8
	XORWF      FARG_text_a+0, 0
L__text45:
	BTFSC      STATUS+0, 2
	GOTO       L_text10
	MOVLW      0
	XORWF      FARG_text_a+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__text46
	MOVLW      9
	XORWF      FARG_text_a+0, 0
L__text46:
	BTFSC      STATUS+0, 2
	GOTO       L_text11
;Clock.c,39 :: 		}
L_end_text:
	RETURN
; end of _text

_main:

;Clock.c,48 :: 		void main() {
;Clock.c,49 :: 		TRISC = 0x03 ;
	MOVLW      3
	MOVWF      TRISC+0
;Clock.c,50 :: 		PORTC = 0X00;
	CLRF       PORTC+0
;Clock.c,51 :: 		Lcd_Init();                                                   // Initialize Lcd module
	CALL       _Lcd_Init+0
;Clock.c,52 :: 		Lcd_Cmd(_LCD_CLEAR);                          // Clear Lcd display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Clock.c,53 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);                     // Lcd cursor off
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Clock.c,54 :: 		Lcd_Out(1,3,"Developed By");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr2_Clock+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Clock.c,55 :: 		Lcd_Out(2,1,"MINA TECHNOLOGY");
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr3_Clock+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Clock.c,56 :: 		delay_ms(2000);                                              // 2second delay
	MOVLW      51
	MOVWF      R11+0
	MOVLW      187
	MOVWF      R12+0
	MOVLW      223
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	DECFSZ     R11+0, 1
	GOTO       L_main12
	NOP
	NOP
;Clock.c,57 :: 		Lcd_Cmd(_LCD_CLEAR);                                 // Clear Lcd display
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;Clock.c,58 :: 		Lcd_Out(1,3,"Digital Clock");
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      3
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr4_Clock+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Clock.c,59 :: 		hour = 1;
	MOVLW      1
	MOVWF      _hour+0
	MOVLW      0
	MOVWF      _hour+1
;Clock.c,61 :: 		while(1){
L_main13:
;Clock.c,62 :: 		set = 0;
	CLRF       _set+0
;Clock.c,63 :: 		if(PORTC.F0==1){
	BTFSS      PORTC+0, 0
	GOTO       L_main15
;Clock.c,64 :: 		delay_ms(100);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      138
	MOVWF      R12+0
	MOVLW      85
	MOVWF      R13+0
L_main16:
	DECFSZ     R13+0, 1
	GOTO       L_main16
	DECFSZ     R12+0, 1
	GOTO       L_main16
	DECFSZ     R11+0, 1
	GOTO       L_main16
	NOP
	NOP
;Clock.c,65 :: 		if(PORTC.F0==1){
	BTFSS      PORTC+0, 0
	GOTO       L_main17
;Clock.c,66 :: 		set_state++;
	INCF       _set_state+0, 1
;Clock.c,67 :: 		if(set_state>=4) set_state = 0;
	MOVLW      4
	SUBWF      _set_state+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L_main18
	CLRF       _set_state+0
L_main18:
;Clock.c,68 :: 		}
L_main17:
;Clock.c,69 :: 		}
L_main15:
;Clock.c,70 :: 		if(set_state){
	MOVF       _set_state+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main19
;Clock.c,71 :: 		if(PORTC.F1==1){
	BTFSS      PORTC+0, 1
	GOTO       L_main20
;Clock.c,72 :: 		set = 1;
	MOVLW      1
	MOVWF      _set+0
;Clock.c,73 :: 		}
L_main20:
;Clock.c,74 :: 		if(set_state && set){
	MOVF       _set_state+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main23
	MOVF       _set+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main23
L__main35:
;Clock.c,75 :: 		switch(set_state){
	GOTO       L_main24
;Clock.c,76 :: 		case 1:
L_main26:
;Clock.c,77 :: 		hour = hour + set;          // Increase hour value
	MOVF       _set+0, 0
	ADDWF      _hour+0, 1
	BTFSC      STATUS+0, 0
	INCF       _hour+1, 1
;Clock.c,78 :: 		break;
	GOTO       L_main25
;Clock.c,79 :: 		case 2:
L_main27:
;Clock.c,80 :: 		minute = minute + set;         // Increase minute value
	MOVF       _set+0, 0
	ADDWF      _minute+0, 1
	BTFSC      STATUS+0, 0
	INCF       _minute+1, 1
;Clock.c,81 :: 		break;
	GOTO       L_main25
;Clock.c,82 :: 		case 3:
L_main28:
;Clock.c,83 :: 		second = 0;                     // clear second value
	CLRF       _second+0
	CLRF       _second+1
;Clock.c,84 :: 		break;
	GOTO       L_main25
;Clock.c,86 :: 		}
L_main24:
	MOVF       _set_state+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_main26
	MOVF       _set_state+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_main27
	MOVF       _set_state+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_main28
L_main25:
;Clock.c,87 :: 		}
L_main23:
;Clock.c,88 :: 		}
L_main19:
;Clock.c,91 :: 		second++;
	INCF       _second+0, 1
	BTFSC      STATUS+0, 2
	INCF       _second+1, 1
;Clock.c,92 :: 		if(second>=60){
	MOVLW      128
	XORWF      _second+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main48
	MOVLW      60
	SUBWF      _second+0, 0
L__main48:
	BTFSS      STATUS+0, 0
	GOTO       L_main29
;Clock.c,93 :: 		minute++;
	INCF       _minute+0, 1
	BTFSC      STATUS+0, 2
	INCF       _minute+1, 1
;Clock.c,94 :: 		second = 0;
	CLRF       _second+0
	CLRF       _second+1
;Clock.c,95 :: 		}
L_main29:
;Clock.c,96 :: 		if(minute>=60){
	MOVLW      128
	XORWF      _minute+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main49
	MOVLW      60
	SUBWF      _minute+0, 0
L__main49:
	BTFSS      STATUS+0, 0
	GOTO       L_main30
;Clock.c,97 :: 		hour++;            // Increase the hour value
	INCF       _hour+0, 1
	BTFSC      STATUS+0, 2
	INCF       _hour+1, 1
;Clock.c,98 :: 		minute = 0;        // Clear minute
	CLRF       _minute+0
	CLRF       _minute+1
;Clock.c,99 :: 		}
L_main30:
;Clock.c,100 :: 		if(hour>=13) {
	MOVLW      128
	XORWF      _hour+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main50
	MOVLW      13
	SUBWF      _hour+0, 0
L__main50:
	BTFSS      STATUS+0, 0
	GOTO       L_main31
;Clock.c,101 :: 		hour = 1;        // Reset hour
	MOVLW      1
	MOVWF      _hour+0
	MOVLW      0
	MOVWF      _hour+1
;Clock.c,102 :: 		i = ~i;
	COMF       _i+0, 1
	COMF       _i+1, 1
;Clock.c,103 :: 		}
L_main31:
;Clock.c,104 :: 		time[0] =text(hour / 10);        // Left digit of hour
	MOVF       _time+0, 0
	MOVWF      FLOC__main+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _hour+0, 0
	MOVWF      R0+0
	MOVF       _hour+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FARG_text_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_text_a+1
	CALL       _text+0
	MOVF       FLOC__main+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Clock.c,105 :: 		time[1] =text(hour % 10);          // Right digit of hour
	INCF       _time+0, 0
	MOVWF      FLOC__main+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _hour+0, 0
	MOVWF      R0+0
	MOVF       _hour+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      FARG_text_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_text_a+1
	CALL       _text+0
	MOVF       FLOC__main+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Clock.c,107 :: 		time[3] = text(minute / 10);        // Left digit of minute
	MOVLW      3
	ADDWF      _time+0, 0
	MOVWF      FLOC__main+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _minute+0, 0
	MOVWF      R0+0
	MOVF       _minute+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FARG_text_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_text_a+1
	CALL       _text+0
	MOVF       FLOC__main+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Clock.c,109 :: 		time[4] = text(minute % 10 );       // Right digit of minute
	MOVLW      4
	ADDWF      _time+0, 0
	MOVWF      FLOC__main+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _minute+0, 0
	MOVWF      R0+0
	MOVF       _minute+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      FARG_text_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_text_a+1
	CALL       _text+0
	MOVF       FLOC__main+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Clock.c,110 :: 		time[6] = text(second / 10);        // Left digit of second
	MOVLW      6
	ADDWF      _time+0, 0
	MOVWF      FLOC__main+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _second+0, 0
	MOVWF      R0+0
	MOVF       _second+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      FARG_text_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_text_a+1
	CALL       _text+0
	MOVF       FLOC__main+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Clock.c,111 :: 		time[7] = text(second % 10);         // Right digit of second
	MOVLW      7
	ADDWF      _time+0, 0
	MOVWF      FLOC__main+0
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _second+0, 0
	MOVWF      R0+0
	MOVF       _second+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      FARG_text_a+0
	MOVF       R0+1, 0
	MOVWF      FARG_text_a+1
	CALL       _text+0
	MOVF       FLOC__main+0, 0
	MOVWF      FSR
	MOVF       R0+0, 0
	MOVWF      INDF+0
;Clock.c,112 :: 		Lcd_Out(2,4,time);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      4
	MOVWF      FARG_Lcd_Out_column+0
	MOVF       _time+0, 0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;Clock.c,113 :: 		if(i==0)Lcd_Out(2,14,"AM");
	MOVLW      0
	XORWF      _i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main51
	MOVLW      0
	XORWF      _i+0, 0
L__main51:
	BTFSS      STATUS+0, 2
	GOTO       L_main32
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr5_Clock+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main32:
;Clock.c,114 :: 		if(i)Lcd_Out(2,14,"PM");                  // show time value
	MOVF       _i+0, 0
	IORWF      _i+1, 0
	BTFSC      STATUS+0, 2
	GOTO       L_main33
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      14
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr6_Clock+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
L_main33:
;Clock.c,115 :: 		delay_ms(1000);          // 1s delay
	MOVLW      26
	MOVWF      R11+0
	MOVLW      94
	MOVWF      R12+0
	MOVLW      110
	MOVWF      R13+0
L_main34:
	DECFSZ     R13+0, 1
	GOTO       L_main34
	DECFSZ     R12+0, 1
	GOTO       L_main34
	DECFSZ     R11+0, 1
	GOTO       L_main34
	NOP
;Clock.c,116 :: 		}}
	GOTO       L_main13
L_end_main:
	GOTO       $+0
; end of _main
