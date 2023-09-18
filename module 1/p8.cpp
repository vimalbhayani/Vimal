#include<stdio.h>
main()
{
int m1,m2,m3,m4,m5,sum,total=500;
float per;
printf("\n enter your subject marks:");
scanf("%d %d %d %d %d ",&m1,&m2,&m3,&m4,&m5);
sum=m1+m2+m3+m4+m5;
printf("\nSum : %d", sum);
per = (sum * 100) / total;
printf("\nPercentage : %f", per);
}
