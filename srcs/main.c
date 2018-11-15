#include "../includes/libft_asm.h"
#include <stdio.h>
#include <string.h>
#include <unistd.h>

int main(void)
{
	char *s1;
	char *s2;
	int	i;

	// FT_BZERO TEST
	printf("FT_BZERO: \n");
	{
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
	}
	printf("\n");

	printf("FT_STRCAT : \n");
	// FT_STRCAT TEST
	{
		s1 = (char *)malloc(sizeof(char) * 20);
		s2 = (char *)malloc(sizeof(char) * 20);
		s1 = strcpy(s1, "coucou je s");
		s2 = strcpy(s2, "uis con");
		printf("BEFORE strcat: %s : %s\n", s1, s2);
		s1 = ft_strcat(s1, s2);
		printf("AFTER strcat: %s : %s\n", s1, s2);
		free(s1);
		free(s2);
	}
	printf("\n");

	printf("FT_ISALPHA: \n");
	// FT_ISALPHA TEST
	{
		i = 0;
		while (i++ < 127)
		{
			printf("%c : %d\t", i, ft_isalpha(i));
			(i % 10 == 0) ? printf("\n") : 0;
		}
	}
	printf("\n\n");

	printf("FT_ISDIGIT: \n");
	// FT_ISDIGIT TEST
	{
		i = 0;
		while (i++ < 127)
		{
			printf("%c : %d\t", i, ft_isdigit(i));
			(i % 10 == 0) ? printf("\n") : 0;
		}
	}
	printf("\n");
	return (0);
}
