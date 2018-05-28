/*      2017-01-19
*       Torbjorn R
*              
*       This program reads 512 byts from input_file.txt and prints it to output_file.txt
*       This file is intended as an example fore me so that I understand all parts in the final program
*       Final program is suposed to read 512 bytes from input_file.txt and then send it to the chacha
*       over the uart and write down the awnser 
*/

#include <stdio.h>
#include <stdlib.h>

#define BUFFER_SIZE 512

int main(){
    FILE *fp1, *fp2;
    char *buff[BUFFER_SIZE];
    
    //--------------------reading 512 bytes of data-----------------------------------
    fp1 = fopen("input_file.txt", "r");

    fread(buff, BUFFER_SIZE, 1, fp1);          // reads BIFFER_SIZE amount of charecters 1 time prom fp1 into buff 
    fclose(fp1);
    
    //--------------------writing 512 bytes of data-----------------------------------
    fp2 = fopen("output_file.txt", "w");

    fwrite(buff, BUFFER_SIZE, 1, fp2);
    fclose(fp2);

    return 0;
}
