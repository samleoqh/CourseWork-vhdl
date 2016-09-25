/*
 * kbDecode.c
 *
 *  Created on: April 3, 2016
 *  Author: Qinghui Liu
 *
 */
#include "kbDecode.h"

void int2str3(int i, u8 b[])
{
	u8 const digit[] = "0123456789";
	u8* p = b;
    ++p;
    ++p;
    ++p;
    *p = '\0';
    int j;

    for (j =0; j<3; j++){
    	*--p = digit[i%10];
    	i = i/10;
    }

}
void int2str(int i, u8 b[]){
	u8 const digit[] = "0123456789";
	u8* p = b;
    if(i<0){
        *p++ = '-';
        i *= -1;
    }
    int shifter = i;
    if (i<10){
    	++p;
        do{ //Move to where representation ends
            ++p;
            shifter = shifter/10;
        }while(shifter);

    }else
    {
        do{ //Move to where representation ends
            ++p;
            shifter = shifter/10;
        }while(shifter);
    }

    *p = '\0';
    if (i<10){
    	*--p = digit[i%10];
    	*--p = '0';
    }
    else {
    	do{ //Move back, inserting digits as u go
        	*--p = digit[i%10];
        	i = i/10;
    	}while(i);
    }
    //return b;
}

int str2Int(u8 str[]){
    int i=0,sum=0;
    while(str[i]!='\0'){
         if(str[i]< 48 || str[i] > 57){
             return 0;
         }
         else{
             sum = sum*10 + (str[i] - 48);
             i++;
         }
    }
    return sum;
}

u8 KbDeCode(u8 KbCode)
{
	u8 kbChar;
	switch (KbCode)
	{
	case 0x16:
		kbChar = '1';
		break;
	case 0x1E:
		kbChar = '2';
		break;
	case 0x26:
		kbChar = '3';
		break;
	case 0x25:
		kbChar = '4';
		break;
	case 0x2E:
		kbChar = '5';
		break;
	case 0x36:
		kbChar = '6';
		break;
	case 0x3D:
		kbChar = '7';
		break;
	case 0x3E:
		kbChar = '8';
		break;
	case 0x46:
		kbChar = '9';
		break;
	case 0x45:
		kbChar = '0';
		break;
	case 0x15:
		kbChar = 'Q';
		break;
	case 0x1D:
		kbChar = 'W';
		break;
	case 0x24:
		kbChar = 'E';
		break;
	case 0x2D:
		kbChar = 'R';
		break;
	case 0x2C:
		kbChar = 'T';
		break;
	case 0x35:
		kbChar = 'Y';
		break;
	case 0x3C:
		kbChar = 'U';
		break;
	case 0x43:
		kbChar = 'I';
		break;
	case 0x44:
		kbChar = 'O';
		break;
	case 0x4D:
		kbChar = 'P';
		break;
	case 0x1C:
		kbChar = 'A';
		break;
	case 0x1B:
		kbChar = 'S';
		break;
	case 0x23:
		kbChar = 'D';
		break;
	case 0x2B:
		kbChar = 'F';
		break;
	case 0x34:
		kbChar = 'G';
		break;
	case 0x33:
		kbChar = 'H';
		break;
	case 0x3B:
		kbChar = 'J';
		break;
	case 0x42:
		kbChar = 'K';
		break;
	case 0x4B:
		kbChar = 'L';
		break;
	case 0x1A:
		kbChar = 'Z';
		break;
	case 0x22:
		kbChar = 'X';
		break;
	case 0x21:
		kbChar = 'C';
		break;
	case 0x2A:
		kbChar = 'V';
		break;
	case 0x32:
		kbChar = 'B';
		break;
	case 0x31:
		kbChar = 'N';
		break;
	case 0x3A:
		kbChar = 'M';
		break;
	case 0x4E:
		kbChar = '-';
		break;
	case 0x55:
		kbChar = '+';
		break;
	default:
		//kbChar = '\0';
		kbChar = '/';
		break;

	}
	return kbChar;
}


