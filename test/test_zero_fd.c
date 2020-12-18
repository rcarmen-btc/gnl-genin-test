#include <stdlib.h>
#include <stdio.h>
#include "../src/get_next_line.h"
#include <unistd.h>
#include <string.h>

int main() {
    int ret;
    char *line;

    line = 0;
    ret = get_next_line(0, &line);
    while (ret > 0) {
        write(1, line, strlen(line));
        write(1, "\n", 1);
        free(line);
        line = 0;
        ret = get_next_line(0, &line);
    }
    if (ret == 0) {
        write(1, line, strlen(line));
        write(1, "\n", 1);
        free(line);
        line = 0;
    }
}
