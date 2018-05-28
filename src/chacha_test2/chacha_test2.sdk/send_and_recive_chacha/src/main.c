/*
 * main.c
 *
 *  Created on: Jan 25, 2017
 *      Author: torbjorn
 *
 *      I whant this program to send data trough chacha twice and se what we gett back.
 */

#include <stdio.h>
#include "fsl.h"
#include "xil_cache.h"
#include "xuartlite_l.h"
//#include "mb-interface.h"

#define BUFFER_SIZE 512
#define BASE_ADRESS XPAR_UARTLITE_0_BASEADDR

void encrypt(char *raw, char *enc);
void send_to_pc(char *raw, char *enc, char *dec);
void write_uart(u32 base_adress, char *buff);

int main(){
    char mesage[64], encrypt_mesage[BUFFER_SIZE],mesage2[BUFFER_SIZE], mesage_text[27] = "Hello this is an test text!";
    int index;
    //Hello this is an test text to see if we can encrypt data and retreve it!  // 71 chars mesage_text.
    // make loop that fills mesage whit mesage_text
    for(index = 0; index < 64; index++){
        mesage[index] = mesage_text[index % 27];
    }
    // print and send original data
    //write_uart(BASE_ADRESS, mesage);                    // testing to write first seems like i need to alocate memory other whise
    for(index = 0; index < 64; index++){
        xil_printf("%c", mesage[index]);
    }
    	xil_printf("\n\r end of original message: \n\r");

    // encrypt 
    encrypt(mesage, encrypt_mesage);

    // print encrypted data
   // write_uart(BASE_ADRESS, encrypt_mesage);            //sending encrypted
    for(index = 0; index < 64; index++){
        xil_printf("%c", encrypt_mesage[index]);
    }
    xil_printf("\n\r end of encrypted message: \n\r");
    // run encryption again
    encrypt(encrypt_mesage, mesage2);

    // print new data.
    //write_uart(BASE_ADRESS, mesage2);                   //sending mesage2
    for(index = 0; index < 64; index++){
        xil_printf("%c", mesage2[index]);
    }    
    xil_printf("\n\r end of decrypted message: \n\r");

    // Send to uart
   // send_to_pc(mesage, encrypt_mesage, mesage2);

    return 0;
}

void encrypt(char *raw, char *enc){
   
    int index; //, jindex;
    
    for(index = 0; index < 64; index++){
    	microblaze_bwrite_datafsl(raw[index], 0);
    }

    for(index = 0; index < 64; index++){
    	microblaze_bread_datafsl(enc[index], 0);
    }

/*    for(index = 0; index < 16; index++){
        for(jindex = 0; jindex < 32; jindex++){
            microblaze_bwrite_datafsl(raw[jindex], 0);
        }       
    } 

    for(index = 0; index < 16; index++){
        for(jindex = 0; jindex < 32; jindex++){
            microblaze_bread_datafsl(enc[jindex], 0);
        }       
    }
*/
}
/*
void send_to_pc(char *raw, char *enc, char *dec){
    write_uart(BASE_ADRESS, raw);
    write_uart(BASE_ADRESS, enc);
    write_uart(BASE_ADRESS, dec); 
}
*/
void write_uart(u32 base_adress, char *buff){
    int index;

    for(index = 0; index < BUFFER_SIZE; index++){
        XUartLite_SendByte(base_adress, buff[index] );
    }       
}




