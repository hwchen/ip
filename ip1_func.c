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
