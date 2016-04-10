A
A
B
B

B
C
nclude <stdio.h>
#include <string.h>

int main() {
	char * s1 = "Hello";
	char s2[] = "Hello";
	char s3[6] = {'H', 'e', 'l', 'l', 'o', '\0'};
printf("%d\n",sizeof(s1));
printf("%d\n",sizeof(s2));
printf("%d\n",sizeof(s3));
printf("%d\n",strlen(s1));
printf("%d\n",strlen(s2));
printf("%d\n",strlen(s3));
return 0;
}


