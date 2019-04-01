# ABOUT

An ip address is make up of 4 numbers between 0 and 255 that are separated by
dots. We want to combine the 4 unsigned chars into one unsigned 4 byte integer.

There are a couple of ways of doing this after we acquire the values of the
unsigned chars. We can use left shifts to put each char into their proper
location in the integer and then add up the results. We could also create an a
char array of size 4 and put each char into their place and then interpret the
result as an integer.

This is a basic set up to test which method will be faster. 
