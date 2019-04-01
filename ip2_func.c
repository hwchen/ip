int ip_placement(int a, int b, int c, int d) {
    int result = 0;

    a <<= 24;
    b <<= 16;
    c <<= 8;

    result += a;
    result += b;
    result += c;
    result += d;

    return result;
}
