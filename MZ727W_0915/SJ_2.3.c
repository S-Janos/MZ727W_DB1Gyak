//
// Created by szamuraj on 9/15/21.
//

#include <stdio.h>
#include <stdlib.h>

void feladat();

int main() {
    char c, fnev1[50], fnev2[50];
    printf("1. fájl neve: ");
    scanf("%s", fnev1);
    printf("2. fájl neve: ");
    scanf("%s", fnev2);
    feladat(fnev1, fnev2);
    return 0;
}

void feladat(char fnev1[], char fnev2[]) {
    FILE *f1, *f2;
    char c;
    f1 = fopen(fnev1, "r");
    f2 = fopen(fnev2, "w");
    while ((c = getc(f1)) != EOF) {
        putc(c, f2);
    }
    fclose(f1);
    fclose(f2);
    return 0;
}