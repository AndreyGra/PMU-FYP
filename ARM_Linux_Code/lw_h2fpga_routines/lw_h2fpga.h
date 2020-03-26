#include <stdio.h>
#include <stdint.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h> 

int   open_physical(int file_descriptor);
void  close_physical(int file_descriptor);
void* map_physical(int file_descriptor, unsigned int base, unsigned int span);
int   unmap_physical(void* virtual_base, unsigned int span);
