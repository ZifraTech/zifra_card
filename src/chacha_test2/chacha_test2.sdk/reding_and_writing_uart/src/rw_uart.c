/*
 * rw_uart.c
 *
 *  Created on: Jan 13, 2017
 *      Author: torbjorn
 *      Funk  : this program shuld read the uart and then print it before
 *      returning it to he uart
 *      I want to do this in sub funktions
 *      TODO empty the buffer before start
 *      TODO add encryption funktionality.
 *      TODO I did an minar miscalculation chacha takes 512 bytes my read only reds 32 byte...
 *      TODO what do i gett back from chacha? jag far tillbacka liknande fixas nog med 512 bytes
 */
#include <stdio.h>
#include "xil_cache.h"
#include "xuartlite_l.h"



#define BASE_ADRESS XPAR_UARTLITE_0_BASEADDR
#define BUFFER_SIZE 512


void read_uart(u32 base_adress, char *buff);
void encrypt(char *raw, char *enc);
void write_uart(u32 base_adress, char *buff);

int main(){
    char read_buffer[BUFFER_SIZE], encrypted_buffer[BUFFER_SIZE], decrypt_buffer[BUFFER_SIZE]; // TODO sems like these are to small
    u16 index;
    xil_printf("start main\n\r");


    for (index = 0; index < BUFFER_SIZE; ++index) {     			// zero buffers
    	xil_printf("ping %d \n\r", index);
		read_buffer[index] = 0;
		encrypted_buffer[BUFFER_SIZE] = 0;
	}


	read_uart(BASE_ADRESS, read_buffer);
	xil_printf("exit read_uart\n\r");
	for(index = 0; index < BUFFER_SIZE; index++){		// Print awnser from read_uart
	xil_printf("%c", read_buffer[index]);
	}
	xil_printf("\n\r");									// new line

	encrypt(read_buffer, encrypted_buffer);				//encrypt awnser

	write_uart(BASE_ADRESS, encrypted_buffer);			//send encrypted back on buffer



	for(index = 0; index < 256; index++){				//print encrypted awnser
		xil_printf("%c", encrypted_buffer[index]);
	}
	xil_printf("\n\r");									// new line

	encrypt(encrypted_buffer, decrypt_buffer);

	for(index = 0; index < 256; index++){				//print encrypted awnser
		xil_printf("%c", decrypt_buffer[index]);
	}


	return 0;
}

void read_uart(u32 base_adress, char *buff){
	xil_printf("read_uart\n\r");
	int index;

	for(index = 0; index < BUFFER_SIZE; index++){		// loop that reads one byte at a time
		buff[index] = XUartLite_RecvByte(base_adress);	// read one byte from uart
		xil_printf("%d\n\r", index);
	}
	xil_printf("\n\r");									// new line

}

void encrypt(char *raw, char *enc){
	xil_printf("encrypt\n\r");
	int index, jindex;

	for(index = 0; index < 16; index++){				// read lopes 16 * 32 bytes
		for(jindex = 0; jindex < 32; jindex ++){
			microblaze_bwrite_datafsl(raw[jindex], 0);	// write from the FSL 0
		}
	}

	for(index = 0; index < 16; index++){
		for(jindex = 0; jindex < 32; jindex++){
			microblaze_bread_datafsl(enc[jindex], 0);	// read to FSL 0
		}
	}
}

void write_uart(u32 base_adress, char *buff){
	int index;

	for(index = 0; index < BUFFER_SIZE; index++){
		XUartLite_SendByte(base_adress, buff[index] );
	}
}


