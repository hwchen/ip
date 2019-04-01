#include <stdio.h>
#include <stdlib.h>
#include <string.h>

union data {
    int i;
    char c[4];
};

int ip_placement(int a, int b, int c, int d) {
    union data u;

    u.c[0] = d;
    u.c[1] = c;
    u.c[2] = b;
    u.c[3] = a;

    return u.i;
}

int main(int argc, char** argv) {
    char* string = argv[1];
    char* token;
    int nums[4] = {0};

    token = strtok(string, ".");
    nums[0] = strtol(token, NULL, 0);

    for(int i = 0; i < 3; i++) {
        token = strtok(NULL, ".");
        if (!token) break;

        nums[i+1] = strtol(token, NULL, 0);
    }

    int result = ip_placement(nums[0], nums[1], nums[2], nums[3]);
    printf("%u\n", result);

    return 0;
}
