#include <stdio.h>

int main() {
    int number, reversedNumber = 0;

    printf("Enter a number: ");
    scanf("%d", &number);

    while (number != 0) {
        int digit = number % 10;
        reversedNumber = reversedNumber * 10 + digit;
        number /= 10;
    }

    printf("Number in reverse order: %d\n", reversedNumber);

    return 0;
}

