#include "lw_h2fpga.h"

int open_physical(int file_descriptor) {
    if (-1 == file_descriptor){ //check if already open
        if ((file_descriptor = open("/dev/mem", (O_RDWR | O_SYNC))) == -1) {
            printf("ERROR: Could not open \" /dev/mem \" \n");
            return -1;
        }
    }    

    return file_descriptor;
}

void close_physical(int file_descriptor) {
    close(file_descriptor);
}

void* map_physical(int file_descriptor, unsigned int base, unsigned int span) {
    void* virtual_base;

    virtual_base = mmap(NULL, span, (PROT_READ | PROT_WRITE), MAP_SHARED, file_descriptor, base);

    if (virtual_base == MAP_FAILED) {
        printf("ERROR: mmap() failed \n");
        close(file_descriptor);
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