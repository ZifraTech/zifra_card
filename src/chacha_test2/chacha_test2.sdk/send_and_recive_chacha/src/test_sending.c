/*
*       2017-01-26
*       Torbjorn R
*
*       Just testing if I can send the data like i shuld.
*
*
*/

#include <stdio.h>
#include "fsl.h"
#include "xil_cache.h"
#include "xuartlite_l.h"

#define BUFFER_SIZE 512
#define BASE_ADRESS XPAR_UARTLITE_0_BASEADDR

int mainde(){
    char mesage[BUFFER_SIZE], mesage_text[72] = "Hello this is an test text to see if we can encrypt data and retreve it!";
    int index;

    for(index = 0; index < BUFFER_SIZE; index++){
        mesage[index] = mesage_text[index % 72];
    }

    for(index = 0; index < BUFFER_SIZE; index++){
        XUartLite_SendByte(BASE_ADRESS, mesage[index]);
    } 
    return 0;
}
