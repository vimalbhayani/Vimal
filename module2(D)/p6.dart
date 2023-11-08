import 'dart:io';

void main()
{
int i=1,j=1;
for(i=5;i>0;i--)	
{
	for(j=1;j<6;j++)
	{
	if(j>=i)
    	{
stdout.write(" *");		}	
		else
		{
			stdout.write(" ");
		}
	}
	print("\n");
}
}