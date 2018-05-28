/*
 * main.c
 *
 *  Created on: Jan 12, 2017
 *      Author: torbjorn
 */
#include "stdio.h"
#include "fsl.h"
void encrypt(void);


int main(){
	encrypt();
	return 0;
}

void encrypt(void){
	int index, jindex, lindex;
	char raw[32], enc[32];
	for(index = 0; index < 32; index ++){
		raw[index] = 'C';
	}
	for(index = 0; index < 32; index ++){
		xil_printf("raw file %c\r\n", raw[index]);
	}
	//xil_printf("raw file %c\r\n", raw);
	//send over FSL
	for(index = 0; index < 16; index ++){
		for(jindex = 0; jindex < 32; jindex++){
			microblaze_bwrite_datafsl(raw, 0);
		}
	}
	//read from FSL
	for(index = 0; index < 16; index ++){
		for(jindex = 0; jindex < 32; jindex++){
			microblaze_bread_datafsl(enc[jindex], 0);
		}
		for(lindex = 0; lindex < 32; lindex++){
			xil_printf("enc file %c\r\n", enc[lindex]);
		}
		//xil_printf("enc file %c\r\n", enc);
	}
}
