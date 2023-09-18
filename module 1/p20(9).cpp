#include <stdio.h>

int main() {
    int number, sum = 0;

    printf("Enter a number: ");
    scanf("%d", &number);

    if (number < 0) {
        number = -number;
    }

    for (; number > 0; number /= 10) {
        int digit = number % 10;
        sum += digit;
    }

    if (number < 0) {
        sum = -sum;
    }

    printf("The summation of the digits is %d\n", sum);

    return 0;
}

