#include <stdio.h>
#include <string.h>
#include "productos.h"

//Carga lista de productos desde producto.txt
int cargar_productos(const char *ruta, Producto *productos, int max) {
    FILE *f = fopen(ruta, "r");
    if (!f) {
        printf("No se pudo abrir %s\n", ruta);
        return 0;
    }

    int n = 0;
    while (!feof(f) && n < max) {
        char linea[512];

        if (fgets(linea, sizeof(linea), f) == NULL)
            break;

        char cod[128], nom[128];
        int cant;
        float costo, pv;

        //sscanf separa los valores
        if (sscanf(linea,
                   "%127[^,],%127[^,],%d,%f,%f",
                   cod, nom, &cant, &costo, &pv) == 5) {

            strcpy(productos[n].codigo, cod);
            strcpy(productos[n].nombre, nom);
            productos[n].cantidad = cant;
            productos[n].costo = costo;
            productos[n].precio_venta = pv;
            n++;
        }
    }

    fclose(f);
    return n;
}

//Guarda el inventario actualizado en producto.txt
int guardar_productos(const char *ruta, Producto *productos, int nproductos) {
    FILE *f = fopen(ruta, "w");
    if (!f) return 0;

    for (int i = 0; i < nproductos; i++) {
        fprintf(f, "%s,%s,%d,%.2f,%.2f\n",
                productos[i].codigo,
                productos[i].nombre,
                productos[i].cantidad,
                productos[i].costo,
                productos[i].precio_venta);
    }

    fclose(f);
    return 1;
}

//Busca un producto por código
int buscar_producto(Producto *productos, int nproductos, const char *codigo) {
    for (int i = 0; i < nproductos; i++) {
        if (strcmp(productos[i].codigo, codigo) == 0)
            return i;
    }
    return -1;
}
