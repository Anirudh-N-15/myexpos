#include <stdio.h>

int main() {
    FILE* fptr ;
    fptr = fopen("numbers.dat", "w");

    for(int i=1;i<2048;++i){
        fprintf(fptr, "%d\n",i);
    }

    fclose(fptr);

    return 0;
}
