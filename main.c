#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

extern void	ft_bzero(void *s, size_t n);
extern char *ft_strcat(char *s1, const char *s2);

int main(void)
{
	char *s1;
	char *s2;
	int	i;

	i = 0;
	s1 = (char *)malloc(sizeof(char) * 20);
	s1 = strcpy(s1, "coucou jes");
	printf("BEFORE BZERO:\n\n");
	while (i < 10)
		printf("%x\n", s1[i++]);
	i = 0;
	ft_bzero(s1, 10);
	printf("AFTER BZERO:\n\n");
	while (i < 10)
		printf("%x\n", s1[i++]);

	free (s1);
	s1 = (char *)malloc(sizeof(char) * 20);
	s2 = (char *)malloc(sizeof(char) * 20);
	s1 = strcpy(s1, "coucou je s");
	s2 = strcpy(s2, "uis con");
	printf("BEFORE strcat: %s : %s\n", s1, s2);
	s1 = ft_strcat(s1, s2);
	printf("AFTER strcat: %s : %s\n", s1, s2);
	return (0);
}
