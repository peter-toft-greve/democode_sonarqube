#include <stdio.h>
#include "ext_fct.h"

int main(void) {
    int a = 2;
    ext_fct(a);
    if (a == 1) {
        printf("Cannot go here\n");
    }
}
