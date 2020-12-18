#include <stdlib.h>
#include <stdio.h>
#include "../src/get_next_line.h"

int			main(int ac, char **av)
{
	// (void)ac;
	int fd;
	char *line;
	int i;
	int line_cnt;
	int k;

	k = 1;
	line_cnt = 0;
	while (k < ac)
	{
		fd = open(av[k], O_RDONLY);

		printf("==================================================================================================\n");		
		printf("									[%s]      \n", av[k]);
		printf("==================================================================================================\n");

		while ((i = get_next_line(fd, &line)))
		{
			printf("%d|%s\n", i, line);
			free(line);
		
			line_cnt++;
		}
		line_cnt++;

		printf("%d|%s\n", i, line);
		free(line);
		
		printf("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~[END OF FILE]~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n");
		printf("\n");
		printf("\n");
		printf("\n");
		
		k++;
	}
	return (0);
}