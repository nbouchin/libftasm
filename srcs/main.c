#include "../includes/libft_asm.h"
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <ctype.h>

void	ft_bzero_test()
{
	char *s1;
	char *s2;
	int	i;

	i = 0;
	s1 = (char *)malloc(sizeof(char) * 20);
	s2 = (char *)malloc(sizeof(char) * 20);
	s1 = strcpy(s1, "coucou jes");
	s2 = strcpy(s2, "coucou jes");
	ft_bzero(s1, 10);
	bzero(s2, 10);
	if (!memcmp(s1, s2, 10))
		printf("ft_bzero_test - [ok]\n");
	else
		printf("ft_bzero_test - [ko]\n");
	free (s1);
	free (s2);
}

void	ft_strcat_test()
{
	char *s1;
	char *s2;
	char *s3;

	s1 = (char *)malloc(sizeof(char) * 20);
	s2 = (char *)malloc(sizeof(char) * 20);
	s3 = (char *)malloc(sizeof(char) * 20);
	bzero(s1, 20);
	bzero(s2, 20);
	bzero(s3, 20);
	s1 = strcpy(s1, "coucou je s");
	s3 = strcpy(s3, "coucou je s");
	s2 = strcpy(s2, "uis con");
	s1 = ft_strcat(s1, s2);
	s3 = strcat(s3, s2);
	if (!memcmp(s1, s3, 20))
		printf("ft_strcat_test - [ok]\n");
	else
		printf("ft_strcat_test - [ko]\n");
	free(s1);
	free(s2);
	free(s3);
}

void	ft_isalpha_test()
{
	int	i;
	int	ok;

	i = 0;
	ok = 1;
	while (i++ < 127)
	{
		if (ft_isalpha(i) != isalpha(i))
		{
			printf("ft_isalpha_test - [ko]\n");
			ok = 0;
			break;
		}
	}
	if (ok == 1)
		printf("ft_isalpha_test - [ok]\n");
}

void	ft_isdigit_test()
{
	int	i;
	int	ok;

	i = 0;
	ok = 1;
	while (i++ < 127)
	{
		if (ft_isdigit(i) != isdigit(i))
		{
			printf("ft_isdigit_test - [ko]\n");
			ok = 0;
			break;
		}
	}
	if (ok == 1)
		printf("ft_isdigit_test - [ok]\n");
}

void	ft_isalnum_test()
{
	int	i;
	int	ok;

	i = 0;
	ok = 1;
	while (i++ < 127)
	{
		if (ft_isalnum(i) != isalnum(i))
		{
			printf("ft_isalnum_test - [ko]\n");
			ok = 0;
			break;
		}
	}
	if (ok == 1)
		printf("ft_isalnum_test - [ok]\n");
}

void	ft_isascii_test()
{
	int	i;
	int	ok;

	i = 0;
	ok = 1;
	while (i++ < 127)
	{
		if (ft_isascii(i) != isascii(i))
		{
			printf("ft_isascii_test - [ko]\n");
			ok = 0;
			break;
		}
	}
	if (ok == 1)
		printf("ft_isascii_test - [ok]\n");
}

void	ft_isprint_test()
{
	int	i;
	int	ok;

	i = 0;
	ok = 1;
	while (i++ < 127)
	{
		if (ft_isprint(i) != isprint(i))
		{
			printf("ft_isprint_test - [ko]\n");
			ok = 0;
			break;
		}
	}
	if (ok == 1)
		printf("ft_isprint_test - [ok]\n");
}

void	ft_toupper_test()
{
	int	i;
	int	ok;

	i = 0;
	ok = 1;
	while (i++ < 127)
	{
		if (ft_toupper(i) != toupper(i))
		{
			printf("ft_toupper_test - [ko]\n");
			ok = 0;
			break;
		}
	}
	if (ok == 1)
		printf("ft_isprint_test - [ok]\n");
}

void	ft_tolower_test()
{
	int	i;
	int	ok;

	i = 0;
	ok = 1;
	while (i++ < 127)
	{
		if (ft_tolower(i) != tolower(i))
		{
			printf("ft_tolower_test - [ko]\n");
			ok = 0;
			break;
		}
	}
	if (ok == 1)
		printf("ft_tolower_test - [ok]\n");
}

void	ft_strlen_test()
{
	int	ok;

	ok = 1;
	if (ft_strlen("CCOUCOU JE SUIS CON") != strlen("CCOUCOU JE SUIS CON"))
		ok = 0;
	if (ok == 0)
		printf("ft_strlen_test - [ko]\n");
	else
		printf("ft_strlen_test - [ok]\n");
}

void	ft_puts_test()
{
	int	ok;

	ok = 1;
	if (ft_puts("COUCOU je SuSIS u23423151245") != puts("COUCOU je SuSIS u23423151245"))
		ok = 0;
	if (ft_puts(NULL) != puts(NULL))
		ok = 0;
	if (ok == 0)
		printf("ft_puts_test - [ko]\n");
	else
		printf("ft_puts_test - [ok]\n");
}

void	ft_memset_test()
{
	char	*s1;
	char	*s2;
	int		i;

	i = 0;
	s1 = (char *)malloc(sizeof(char) * 5);
	s1 = strcpy(s1, "SALUT");
	s1 = ft_memset(s1, 6, 5);
	s2 = (char *)malloc(sizeof(char) * 5);
	s2 = strcpy(s2, "SALUT");
	s2 = ft_memset(s2, 6, 5);
	if (!memcmp(s1, s2, 5))
		printf("ft_memset_test - [ok]\n");
	else
		printf("ft_memset_test - [ko]\n");
	free (s1);
	free (s2);
}

void	ft_memcpy_test()
{
	char	*s1;
	char	*s2;
	char	*s3;

	s1 = (char *)malloc(sizeof(char) * 5);
	s2 = (char *)malloc(sizeof(char) * 5);
	s3 = (char *)malloc(sizeof(char) * 5);
	s1 = strcpy(s1, "SALUT");
	s3 = strcpy(s3, "SALUT");
	s2 = strcpy(s2, "CULLL");
	s1 = ft_memcpy(s1, s2, 5);
	s3 = ft_memcpy(s3, s2, 5);
	if (!memcmp(s1, s3, 5))
		printf("ft_memcpy_test - [ok]\n");
	else
		printf("ft_memcpy_test - [ko]\n");
	free (s1);
	free (s2);
	free (s3);
}

void	ft_strdup_test()
{
	char	*s1;
	char	*s2;
	char	*s3;

	s2 = (char *)malloc(sizeof(char) * 5);
	s2 = strcpy(s2, "CULLL");
	s1 = ft_strdup(s2);
	s3 = ft_strdup(s2);
	if (!memcmp(s1, s3, 5))
		printf("ft_strdup_test - [ok]\n");
	else
		printf("ft_strdup_test - [ko]\n");
	free (s1);
	free (s2);
	free (s3);
}

int main(void)
{
	ft_bzero_test();
	ft_strcat_test();
	ft_isalpha_test();
	ft_isdigit_test();
	ft_isalnum_test();
	ft_isascii_test();
	ft_isprint_test();
	ft_toupper_test();
	ft_tolower_test();
	ft_strlen_test();
	ft_puts_test();
	ft_memset_test();
	ft_memcpy_test();
	ft_strdup_test();
	return (0);
}
