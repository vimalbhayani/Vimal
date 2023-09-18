#include <stdio.h>

int main() {
    int rows = 5;

    for (int i = 1; i <= rows; i++) {
        for (int space = 1; space <= rows - i; space++) {
            printf(" ");
        }

        for (int j = i; j >= 1; j--) {
            printf("%d", j);
        }

        printf("\n");
    }

    return 0;
}

