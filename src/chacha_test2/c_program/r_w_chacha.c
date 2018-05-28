/*
*       2017-01-19
*       Torbjorn R
*
*       This program is suposed to read an input file then send it to the chacah through the uart
*       read it back and print it to an output file.
*/
#include <stdio.h>
#include <stdlib.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <termios.h>
#include <string.h>

#define BUFFER_SIZE 512

// define fore uart

#define BAUDRATE B9600
#define MODEMDEVICE "/dev/ttyUSB1"
#define _POSIX_SOURCE 1 
#define FALSE 0
#define TRUE  1 

volatile int STOP = FALSE;      // volatile so that it is not optimiced away

int main(){
    FILE *fp1, *fp2;
    char *raw_buff[BUFFER_SIZE], enc_buff[BUFFER_SIZE];        
    struct termios oldtio, newtio;
    int fd, res;

//------------------------read input file-----------------------------------------------    
    fp1 = fopen("input_file.txt", "r");                 //open input file

    fread(raw_buff, BUFFER_SIZE, 1, fp1);               //read 512 bytes onf input file to raw_buff
    fclose(fp1);

//------------------------uart settings nead to read up on this-------------------------
    fd = open(MODEMDEVICE, O_RDWR | O_NOCTTY);
    if(fd < 0){                                       
        perror(MODEMDEVICE); 
        exit(-1);
    }

    tcgetattr(fd, &oldtio);                             // sove corrent port settings

    bzero(&newtio, sizeof(newtio));
    newtio.c_cflag = BAUDRATE | CRTSCTS | CS8 | CLOCAL | CREAD;
    newtio.c_iflag = IGNPAR;
    newtio.c_oflag = 0;
        
    /* set input mode (non-canonical, no echo,...) */
    newtio.c_lflag = 0;
         
    newtio.c_cc[VTIME]    = 0;   /* inter-character timer unused */
    newtio.c_cc[VMIN]     = 16;   /* blocking read until 5 chars received */
        
    tcflush(fd, TCIFLUSH);
    tcsetattr(fd,TCSANOW,&newtio);

    //---------------------write the data to uart--------------------------------------
    while(STOP==FALSE){
        res = write(fd, raw_buff, BUFFER_SIZE);
        STOP = TRUE;
    }

    STOP = FALSE;                                       //return to original value 
    
    //---------------------read data from uart-----------------------------------------
    while(STOP==FALSE){
        res = read(fd, enc_buff, BUFFER_SIZE);
        STOP = TRUE;
    }
        

//------------------------write encrypted mesage to outputfile--------------------------
    fp2 = fopen("output_file.txt", "w");                //open output_file.
    
    fwrite(enc_buff, BUFFER_SIZE, 1, fp2);              //write 512 bytes to output_file
    fclose(fp2);
    return 0;
}
