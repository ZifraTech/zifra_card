    #include <sys/types.h>
    #include <sys/stat.h>
    #include <fcntl.h>
    #include <termios.h>
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>    

      #define BAUDRATE B9600
      #define MODEMDEVICE "/dev/ttyUSB2"
      #define _POSIX_SOURCE 1 /* POSIX compliant source */
      #define FALSE 0
      #define TRUE 1
        
      volatile int STOP=FALSE; 
       
      main()
      {
        int fd,c, res;
        struct termios oldtio,newtio;
        char buf[255];
        
        fd = open(MODEMDEVICE, O_RDWR | O_NOCTTY ); 
        if (fd <0) {perror(MODEMDEVICE); exit(-1); }
        
        tcgetattr(fd,&oldtio); /* save current port settings */
        
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
        
        
        while (STOP==FALSE) {       /* loop for input */
          res = read(fd,buf,255);   /* returns after 5 chars have been input */
          STOP = TRUE;
          buf[res]=0;               /* so we can printf... */
          printf(":%s:%d\n", buf, res);
          if (buf[0]=='z') STOP=TRUE;
        }
        STOP = FALSE;
        while (STOP==FALSE) {       /* loop for input */
          res = write(fd,buf,255);   /* returns after 5 chars have been input */
          STOP = TRUE;
          buf[res]=0;               /* so we can printf... */
        }
        

        tcsetattr(fd,TCSANOW,&oldtio);
        sleep(2); //required to make flush work, for some reason
        tcflush(fd,TCIOFLUSH);
        close(fd);
      }
