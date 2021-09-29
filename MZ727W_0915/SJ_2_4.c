//
// Created by szamuraj on 9/15/21.
//

#include <stdio.h>
#include <stdlib.h>

#define file "auto.dat"

typedef struct jarmu {
    char rendszam[6];
    char tipus[30];
    int ar;
} Auto;

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
    printf("\nA fájlban tárolt autók átlagára: %d", atlag());
    return 0;
}

void insert() {
    FILE *fp;
    Auto jarmu;
    fp = fopen(file, "ab");
    if (!fp) { printf("Hiba: nem lehet megynitni a fájlt."); return -1; }
    printf("\nNem lehet szököz a szövegekben. Használja a \'_\' írásjelet.");
    printf("\nA rendszám \'ABC123\' formátumú lehet.")
    printf("\nRendszám: ");
    scanf("%s", &jarmu.rendszam);
    printf("\nTípus: ");
    scanf("%s", &jarmu.tipus);
    printf("\nÁr: ");
    scanf("%d", &jarmu.ar);

    printf("\nÍrás fájlba...");
    fwrite(&Auto, sizeof(Auto), 1, fp);
    fclose(fp);
    return;
}

int finder(const int fkod) {
    FILE *fp;
    Auto jarmu;
    int i, filesize, ok = 0;
    fp = fopen(file, "rb");
    if (!fp) { printf("Hiba: nem lehet meynitni a fájlt."); return -1; }

    fseek(fp, 0L, SEEK_END);
    filesize = ftell(fp)/sizeof(Auto);

    for (i = 0; i < filesize; i++) {
        fseek(fp, sizeof(Auto) * i, fkod);
        fread(&jarmu, sizeof(Auto), i, fp);
        if (auto.szonosito == fkod) {
            ok = 1;
            printf("\nAz %d. autó adatai:", fkod);
            printf("\nRendszám: %s, Típus: %s, Ár: %d", jarmu.rendszam, jarmu.tipus, jarmu.ar);
        }
    }
    if (ok == 0) { printf("\nNincs %d. autó.", fkod); }

    fclose(fp);
    return 0;
}

int atlag() {
    FILE *fp;
    Auto jarmu;
    int i, filesize, temp = 0;
    fp = fopen(file, "rb");
    if (!fp) { printf("Hiba: nem lehet meynitni a fájlt."); return -1; }

    fseek(fp, 0L, SEEK_END);
    filesize = ftell(fp)/sizeof(Auto);

    for (i = 0; i < filesize; i++) {
        fseek(fp, sizeof(Auto) * i, fkod);
        fread(&jarmu, sizeof(Auto), i, fp);
        temp += jarmu.ar;
    }
    temp /= filesize;

    fclose(fp);
    return temp;
}

int max() {
    FILE *fp;
    Auto jarmu;
    int i, filesize, temp = 0;
    fp = fopen(file, "rb");
    if (!fp) { printf("Hiba: nem lehet meynitni a fájlt."); return -1; }

    fseek(fp, 0L, SEEK_END);
    filesize = ftell(fp)/sizeof(Auto);

    for (i = 0; i < filesize; i++) {
        fseek(fp, sizeof(Auto) * i, fkod);
        fread(&jarmu, sizeof(Auto), i, fp);
        if (temp < jarmu.ar){
            temp = jarmu.ar;
        }
    }

    fclose(fp);
    return temp;
}