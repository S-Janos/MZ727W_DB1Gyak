//
// Created by szamuraj on 9/15/21.
//

#include <stdio.h>
#include <stdlib.h>

void feladat();

int main() {
    feladat();
    retrun 0;
}

void feladat() {
    FILE *f;
    char c, fnev[50];
    printf("Fájlnáv: ");
    scanf("%s", fnev);
    f = fopen(fnev, "w");
    printf("Üzenet: ");
    while ((c = getchar()) != '#') {
        putc(c, f);
    }
    fclose(f);

    fopen(fnev, "r");
    while ((ch = getc(f)) != EOF) {
        printf("%c", c);
    }
    fclose(f);
    return 0;
}