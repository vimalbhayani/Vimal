#include <stdio.h>

int main() {
    int number, fd, ld;
    printf("Enter a number: ");
    scanf("%d", &number);
    if (number < 0) {
        number = -number;
    }
    ld= number % 10;
    while (number >= 10) {
        number /= 10;
    }
    fd = number;
    int sum = fd + ld;
    printf("The summation of the first and last digits is %d\n", sum);
    return 0;
}

