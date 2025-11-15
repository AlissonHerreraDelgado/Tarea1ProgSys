#ifndef PRODUCTOS_H
#define PRODUCTOS_H

#define MAX_STR 128
#define MAX_PRODUCTOS 200  // Máximo de productos

typedef struct {
    char codigo[MAX_STR];
    char nombre[MAX_STR];
    int cantidad;
    float costo;
    float precio_venta;
} Producto;

int cargar_productos(const char *ruta, Producto *productos, int max);
int guardar_productos(const char *ruta, Producto *productos, int nproductos);
int buscar_producto(Producto *productos, int nproductos, const char *codigo);

#endif
