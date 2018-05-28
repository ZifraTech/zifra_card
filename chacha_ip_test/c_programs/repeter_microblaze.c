#include <stdio.h>
#include <termios.h>
#include <string.h>
#include <unistd.h>
#include <fcntl.h>
#include <errno.h>

//----------defenitions------------------
//----------modem stuff------------------
#define BAUDRATE B9600
#define MODEMDEVICE "/dev/ttyUSB1"

//----------general stuff----------------
#define FALSE 0
#define TRUE  1

// need more includes here.
// probebly need som settings fore the port Baud rate and so forth.

// declaration of funktions


void main(){
    int fd;
    char buffer[16];
    // Open port

    fd = open(MODEMDEVICE, O_RDWR | O_NOCTTY | O_NDELAY);
    if (fd == -1){
        perror("open_port: Unable to open MODEMDEVICE - ");
    }else{
        fcntl(fd, F_SETFL, 0);
    }
    // configure port stuff ?
    

struct termios options;

/*
 * Get the current options for the port...
 */

tcgetattr(fd, &options);

/*
 * Set the baud rates to 19200...
 */

cfsetispeed(&options, BAUDRATE );
cfsetospeed(&options, BAUDRATE );

/*
 * Enable the receiver and set local mode...
 */

options.c_cflag |= (CLOCAL | CREAD);

/*
 * Set the new options for the port...
 */

tcsetattr(fd, TCSANOW, &options);

/*    struct termios options;
    tcgetattr(fd, &options);
    cfsetispeed(&options, B9600);
    cfsetospeed(&options, B9600);
*/
    // Read port 16 bytes
    int n1 = read(fd, buffer, sizeof(buffer));
    if (n1 < 0){
        fputs("read failed! /n", stderr);
    }
    printf("Receved: %s\n", buffer);
/*
    // write data back to port
    int n2 = write(fd, buffer, 16);
    
    if (n2 < 0){
        fputs("write() of 16 bytes failed! /n", stderr);
    } */       
}
/*
void open_port(){
    // this one opens the port
    int fd;

    fd = open("MODEMDEVICE", O_RDWR | O_NOCTTY | O_NDELAY);
    if (fd == -1){
        perror("open_port: Unable to open MODEMDEVICE - ");
    }else{
        fcntl(fd, F_SETFL, 0);
        return (fd);
    }   
}

void config(void){
}

void read(){
    // this one reads the 16 bytes then returnes
}

void write(char word[16]){
    // this one returns the 16 bytes to the port
    n = write(

}*/
