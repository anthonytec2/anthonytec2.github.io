#include <stdio.h>
#include <string.h>

int main() {
	char * s1 = "Hello";
	char s2[] = " Hello";
	char s3[6] = {'H', 'e', 'l', 'l', 'o', '\0'};
printf("%i\n",sizeof(s1));//4
printf("%i\n",sizeof(s2));//6
printf("%i\n",sizeof(s3));//6
printf("%i\n",strlen(s1));//5
printf("%i\n",strlen(s2));//5
printf("%i\n",strlen(s3));//5
return 0;
}


