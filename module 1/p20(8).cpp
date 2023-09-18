#include <stdio.h>

int main() {
    int number, maxDigit = -1;

    printf("Enter a number: ");
    scanf("%d", &number);

    if (number < 0) {
        number = -number;
    }

    for (; number > 0; number /= 10) {
        int digit = number % 10;
        if (digit > maxDigit) {
            maxDigit = digit;
        }
    }

    if (maxDigit >= 0) {
        printf("The maximum digit in the number is %d\n", maxDigit);
    } else {
        printf("The input number is 0\n");
    }

    return 0;
}

