#include <stdio.h>

int main() {
    int n;
    long long a = 0, b = 1, nextTerm;

    printf("Enter the number of terms you want in the Fibonacci series: ");
    scanf("%d", &n);

    printf("Fibonacci Series up to %d terms:\n", n);

    for (int i = 1; i <= n; ++i) {
        printf("%lld, ", a);
        nextTerm = a + b;
        a = b;
        b = nextTerm;
    }

    printf("\n");

    return 0;
}

