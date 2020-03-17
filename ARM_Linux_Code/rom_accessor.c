#include <stdio.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h> 

int open_physical(int);
int unmap_physical(void*, unsigned int);
void* map_physical(int, unsigned int, unsigned int);
void  close_physical(int);

int buffer[10];

int main(void) {

    volatile int* ROM_ptr;
    void* LW_virtual;
    int fd = -1;

    const unsigned int LW_BRIDGE_BASE = 0xFF200000;
    const unsigned int LW_BRIDGE_END =  0xFF3FFFFF;
    const unsigned int LW_BRIDGE_SPAN = LW_BRIDGE_END-LW_BRIDGE_BASE;

    if ((fd = open_physical(fd)) == -1) {
        return -1;
    }

    if ((LW_virtual = map_physical(fd, LW_BRIDGE_BASE, LW_BRIDGE_SPAN)) == NULL) {
        return -1;
    }

    int rom[] = { *((unsigned int*)(LW_virtual) ,*((unsigned int*)(LW_virtual+0x1)),*((unsigned int*)(LW_virtual+0x2)),*((unsigned int*)(LW_virtual+0x3))};
    printf("ROM: 0x%08x, 0x%08x, 0x%08x, 0x%08x", rom[0], rom[1], rom[2], rom[3] );

    unmap_physical (LW_virtual, LW_BRIDGE_SPAN);
    close_physical(fd);
    return 0;
}

int open_physical(int fd) {
    if (-1 == fd){ //check if already open
        if ((fd = open("/dev/mem", (O_RDWR | O_SYNC))) == -1) {
            printf("ERROR: Could not open \" /dev/mem \" \n");
            return -1;
        }
    }    

    return fd;
}

void close_physical(int fd) {
    close(fd);
}

void* map_physical(int fd, unsigned int base, unsigned int span) {
    void* virtual_base;

    virtual_base = mmap(NULL, span, (PROT_READ | PROT_WRITE), MAP_SHARED, fd, base);

    if (virtual_base == MAP_FAILED) {
        printf("ERROR: mmap() failed \n");
        close(fd);
        return NULL;
    };

return virtual_base;
   
}

int unmap_physical(void* virtual_base, unsigned int span) {
    if(munmap(virtual_base, span) != 0 ) {
        printf("ERROR: munmap() failed \n");
        return (-1);
    }

    return 0;
}