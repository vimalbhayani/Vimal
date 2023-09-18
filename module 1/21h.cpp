#include<stdio.h>
main()
{
int i=1,j=1,k=1;
for(i=5;i>0;i--)	
{
	for(j=1;j<6;j++)
	{
	if(j>=i)
    	{
    		printf ("%d",k);
		printf(" ");
		}	
		else
		{
			printf(" ");
		}
	}
	k++;
	printf("\n");
}
}
