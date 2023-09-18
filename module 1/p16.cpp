#include <stdio.h>

int main() {
    float subjectMarks[5];
    float totalMarks = 0.0;
    float percentage = 0.0;

    printf("Enter marks for 5 subjects:\n");
    for (int i = 0; i < 5; i++) {
        printf("Enter marks for subject %d: ", i + 1);
        scanf("%f", &subjectMarks[i]);
        totalMarks += subjectMarks[i];
    }

    percentage = (totalMarks / (5 * 100)) * 100;

    if (percentage > 75) {
        printf("Distinction\n");
    } else if (percentage > 60) {
        printf("First \n");
    } else if (percentage > 50) {
        printf("Second \n");
    } else if (percentage > 35) {
        printf("Pass \n");
    } else {
        printf("Fail\n");
    }

    return 0;
}

