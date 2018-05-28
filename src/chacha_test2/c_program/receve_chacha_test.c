/*
*       2017-01-25
*       Torbjorn R
*
*       This program is suposed to receve data from uart and save in txt file.
*
*/
#include <stdio.h>
#include <stdlib.h>

#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <termios.h>
#include <string.h>

// uart stuff
#define BAUDRATE B9600
#define MODEMDEVICE "/dev/ttyUSB1"
#define _POSIX_SOURCE 1 
#define FALSE 0
#define TRUE  1 

// other defines
#define BUFFER_SIZE 1536


volatile int STOP = FALSE;      // volatile so that it is not optimiced away

int main(){
    FILE *fp;
    char *buffer[BUFFER_SIZE];    
    struct termios oldtio, newtio;
    int fd;

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

    //-------------------------read uart-----------------------------------------------------
    while(STOP==FALSE){
        read(fd, buffer, BUFFER_SIZE);
        STOP = TRUE;
    }

    fp = fopen("test_data.txt", "w");
    
    fwrite(buffer, BUFFER_SIZE, 1, fp);
    fclose(fp); 

    return 0;
}








