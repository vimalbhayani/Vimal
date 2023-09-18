#include <stdio.h>
#include <math.h>

int main() {
    while (1) {
        printf("\nMenu:\n");
        printf("1. Calculate Triangle Area\n");
        printf("2. Calculate Rectangle Area\n");
        printf("3. Calculate Circle Area\n");
        printf("4. Quit\n");

        int choice;
        printf("Enter your choice (1/2/3/4): ");
        scanf("%d", &choice);

        if (choice == 1) {
            float base, height;
            printf("Enter the base of the triangle: ");
            scanf("%f", &base);
            printf("Enter the height of the triangle: ");
            scanf("%f", &height);
            float area = 0.5 * base * height;
            printf("The area of the triangle is %.2f\n", area);
        } else if (choice == 2) {
            float length, width;
            printf("Enter the length of the rectangle: ");
            scanf("%f", &length);
            printf("Enter the width of the rectangle: ");
            scanf("%f", &width);
            float area = length * width;
            printf("The area of the rectangle is %.2f\n", area);
        } else if (choice == 3) {
            float radius;
            printf("Enter the radius of the circle: ");
            scanf("%f", &radius);
            float area = M_PI * radius * radius;
            printf("The area of the circle is %.2f\n", area);
        } else if (choice == 4) {
            printf("Exiting the program. Goodbye!\n");
            break;
        } else {
            printf("Invalid choice. Please enter a valid option (1/2/3/4).\n");
        }
    }

    return 0;
}

