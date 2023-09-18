#include<stdio.h>
main()
{
	char name[10],address[50];
	int age,b_date,b_year,b_month;
	printf("enter your name:");
	scanf("%s",&name);
	printf("enter your address:");
	scanf("%s",&address);
	printf("enter your b_date:");
	scanf("%d",&b_date);
	printf("enter your b_month:");
	scanf("%d",&b_month);
	printf("enter your b_year:");
	scanf("%d",&b_year);
	printf("enter your age:");
	scanf("%d",&age);
	printf(" your address is : %s \n your name is: %s  \n your age is :%d \n your b_date is :%d \n your b_month is :%d \n your b_year is :%d \n " , address, name, age, b_date, b_month, b_year);
	
}
