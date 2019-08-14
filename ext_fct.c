#include <stdio.h>
#include "ext_fct.h"

void ext_fct(int a) {
    if (a<0) {
        printf("I am negative\n");
    } else {
        printf("I am not so negative any more\n");
    }
}
