#include <stdio.h>

int main() {
    int number;
    long long factorial = 1;

    printf("Enter a positive integer: ");
    scanf("%d", &number);

    // Check if the number is negative
    if (number < 0) {
        printf("Factorial is not defined for negative numbers.\n");
    } else {
        // Calculate factorial
        for (int i = 1; i <= number; i++) {
            factorial *= i;
        }

        printf("The factorial of %d is %lld\n", number, factorial);
    }

    return 0;
}

