
B
B
#include <stdio.h>
#include <string.h>

int main() {
	char * s1 = "Hello";
	char s2[] = "Hello";
	char s3[6] = {'H', 'e', 'l', 'l', 'o', '\0'};
printf("%i\n",sizeof(s1));
printf("%i\n",sizeof(s2));
printf("%i\n",sizeof(s3));
printf("%i\n",strlen(s1));
printf("%i\n",strlen(s2));
printf("%i\n",strlen(s3));
return 0;
}




