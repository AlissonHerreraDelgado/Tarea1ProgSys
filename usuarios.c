#include <stdio.h>
#include <string.h>
#include "usuarios.h"

// Carga los usuarios desde vendedores.txt
int cargar_usuarios(const char *ruta, Usuario *usuarios, int max) {
    FILE *f = fopen(ruta, "r"); // Abre el archvio en modo lectura
    if (!f) {
        printf("No se pudo abrir %s\n", ruta);
        return 0;
    }

    int n = 0;
    while (!feof(f) && n < max) { //Lee linea x linea mientras tenga espacio
        char linea[256];

        if (fgets(linea, sizeof(linea), f) == NULL)
            break;

        char u[128], c[128], nom[128]; // Variables que son temporales para lectura

        if (sscanf(linea, "%127[^,],%127[^,],%127[^\n]", u, c, nom) == 3) { //separo por comas
            strcpy(usuarios[n].usuario, u);
            strcpy(usuarios[n].clave, c);
            strcpy(usuarios[n].nombre, nom);
            n++;
        }
    }

    fclose(f);
    return n;
}

//Verifica usuario y clave (retorna índice del usuario o -1 si no existe)

int verificar_login(Usuario *usuarios, int nusuarios, const char *user, const char *clave) {
    for (int i = 0; i < nusuarios; i++) {
        // strcmp compara cadenas
        if (strcmp(usuarios[i].usuario, user) == 0 &&
            strcmp(usuarios[i].clave, clave) == 0) {
            return i;
        }
    }
    return -1;
}
