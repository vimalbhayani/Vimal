#include<stdio.h>

main()
{
    int num;
    printf("enter number:");
    scanf("%d",&num);
    if(num == 0)
        printf("neither positive nor negative");
    else if(num < 0)
        printf("your number is negative");
    else
        printf("your number is positive");
}
