#include <stdio.h>
#include <string.h>
#include <time.h>

#include "usuarios.h"
#include "productos.h"

#define MAX_ITEMS_VENTA 50 // cantidad maxima de productos por factura

// Estructura para guardar cada item vendido en la factura
typedef struct {
    int indice_producto;
    int cantidad;
} ItemVenta;

// Obtiene fecha actual aaaa-mm-dd
void fecha_actual(char *buffer) {
    time_t t = time(NULL);
    struct tm *tm = localtime(&t);

    sprintf(buffer, "%04d-%02d-%02d",
            tm->tm_year + 1900,
            tm->tm_mon + 1,
            tm->tm_mday);
}

// Lee ventas.txt para obtene el último número de factura del archivo
int obtener_ultimo_num_factura(const char *ruta) {
    FILE *f = fopen(ruta, "r");
    if (!f) return 0; // Si no existe el archivo, la primera factura sera 1

    int num, max = 0;
    char linea[512];

    while (fgets(linea, sizeof(linea), f)) {
        if (sscanf(linea, "%d", &num) == 1) {
            if (num > max) max = num;
        }
    }

    fclose(f);
    return max;
}

// Añade una línea de venta en ventas.txt
void registrar_venta(const char *ruta, int numfact, Producto p, int cantidad, const char *fecha) {
    FILE *f = fopen(ruta, "a"); //modo append
    if (!f) {
        printf("No se puede abrir %s\n", ruta);
        return;
    }

    fprintf(f, "%d,%s,%s,%d,%.2f,%.2f,%s\n",
            numfact,
            p.codigo,
            p.nombre,
            cantidad,
            p.costo,
            p.precio_venta,
            fecha);

    fclose(f);
}

int main() {
    //Arreglos de memoria fija
    Usuario usuarios[MAX_USUARIOS];
    Producto productos[MAX_PRODUCTOS];
    ItemVenta items[MAX_ITEMS_VENTA];

    //cargar datos desde los archivos
    int nusuarios = cargar_usuarios("vendedores.txt", usuarios, MAX_USUARIOS);
    int nproductos = cargar_productos("producto.txt", productos, MAX_PRODUCTOS);

    // LOGIN
    char u[128], c[128];
    int intentos = 0;
    int idx;

    while (intentos < 3) {
        printf("Usuario: ");
        scanf("%s", u);

        printf("Clave: ");
        scanf("%s", c);

        idx = verificar_login(usuarios, nusuarios, u, c);

        if (idx >= 0) break;

        intentos++;
        printf("Incorrecto. Intentos restantes: %d\n", 3 - intentos);
    }

    if (idx < 0) {
        printf("Acceso denegado.\n");
        return 0;
    }

    printf("Bienvenido %s\n", usuarios[idx].nombre);

    // FACTURA
    int ultimo = obtener_ultimo_num_factura("ventas.txt");
    int numfact = ultimo + 1;

    printf("Factura Nº %d\n", numfact);

    int nitems = 0;
    char seguir = 's';

    while ((seguir == 's' || seguir == 'S') && nitems < MAX_ITEMS_VENTA) {
        char cod[128];
        int cant;

        printf("Código del producto: ");
        scanf("%s", cod);

        int ip = buscar_producto(productos, nproductos, cod);
        if (ip < 0) {
            printf("Producto no encontrado\n");
            goto preguntar;
        }

        printf("Cantidad a vender (disponible %d): ", productos[ip].cantidad);
        scanf("%d", &cant);

        if (cant <= 0 || cant > productos[ip].cantidad) {
            printf("Cantidad inválida.\n");
            goto preguntar;
        }

        items[nitems].indice_producto = ip;
        items[nitems].cantidad = cant;
        nitems++;

        printf("Producto agregado.\n");

    preguntar:
        printf("¿Desea agregar otro producto? (s/n): ");
        scanf(" %c", &seguir);
    }

    if (nitems == 0) {
        printf("No se registró ningun producto.\n");
        return 0;
    }

    // MOSTRAR FACTURA
    float total = 0;
    char fecha[16];
    fecha_actual(fecha);

    printf("\n--- FACTURA %d ---\n", numfact);
    printf("Fecha: %s\n", fecha);
    printf("Codigo  Nombre  Cant  PU  Total\n");

    for (int i = 0; i < nitems; i++) {
        Producto p = productos[items[i].indice_producto];
        int c = items[i].cantidad;
        float sub = c * p.precio_venta;
        total += sub;

        printf("%s %s %d %.2f %.2f\n",
               p.codigo, p.nombre, c, p.precio_venta, sub);
    }

    printf("TOTAL: %.2f\n", total);

    char conf;
    printf("¿Confirmar venta? (s/n): ");
    scanf(" %c", &conf);

    if (conf != 's' && conf != 'S') {
        printf("Venta cancelada.\n");
        return 0;
    }

    // ACTUALIZAR INVENTARIO Y REGISTRAR VENTA
    for (int i = 0; i < nitems; i++) {
        int idxp = items[i].indice_producto;
        int c = items[i].cantidad;

        productos[idxp].cantidad -= c;

        registrar_venta("ventas.txt", numfact, productos[idxp], c, fecha);
    }

    guardar_productos("producto.txt", productos, nproductos);

    printf("Venta registrada.\n");

    return 0;
}
