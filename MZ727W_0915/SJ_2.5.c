//
// Created by szamuraj on 9/15/21.
//

#include <stdio.h>
#include <stdlib.h>

#define file "szemely.dat"

typedef struct szemely {
    int azonosito;
    char nev[30];
} Szemely;

void insert();
int finder(const int);

int main() {
    int i, db;
    char c;
    do {
        printf("Mennyi bejegyzést szeretne felvenni?");
        scanf("%d", &db);
    } while ((c = getchar()) != '\n' && c != EOF);

    for (i = 0; i < db; i++) {
        insert();
    }

    finder(116);
    return 0;
}

void insert() {
    FILE *fp;
    Szemely szemely;
    fp = fopen(file, "ab");
    if (!fp) { printf("Hiba: nem lehet megynitni a fájlt."); return -1; }
    printf("\nNem lehet szököz a szövegekben. Használja a \'_\' írásjelet.");
    printf("\nAzonosító: ");
    scanf("%d", &szemely.azonosito);
    printf("\nNév: ");
    scanf("%s", &szemely.nev);

    printf("\nÍrás fájlba...");
    fwrite(&Szemely, sizeof(Szemely), 1, fp);
    fclose(fp);
    return;
}

int finder(const int fkod) {
    FILE *fp;
    Szemely szemely;
    int i, filesize, ok = 0;
    fp = fopen(file, "rb");
    if (!fp) { printf("Hiba: nem lehet meynitni a fájlt."); return -1; }

    fseek(fp, 0L, SEEK_END);
    filesize = ftell(fp)/sizeof(Szemely);

    for (i = 0; i < filesize; i++) {
        fseek(fp, sizeof(Szemely) * i, fkod);
        fread(&szemely, sizeof(Szemely), i, fp);
        if (szemely.szonosito == fkod) {
            ok = 1;
            printf("\nAz %d. elem adatai:", fkod);
            printf("\nAzonosító: %d, Név: %s", szemely.azonosito, szemely.nev);
        }
    }
    if (ok == 0) { printf("\nNincs %d. elem.", fkod); }

    fclose(fp);
    return 0;
}
