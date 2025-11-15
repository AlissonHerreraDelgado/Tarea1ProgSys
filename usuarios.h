#ifndef USUARIOS_H
#define USUARIOS_H

#define MAX_STR 128
#define MAX_USUARIOS 100   // Cantidad maxima de usuarios

// Estructura de usuario
typedef struct {
    char usuario[MAX_STR];
    char clave[MAX_STR];
    char nombre[MAX_STR];
} Usuario;

// Funciones
//Carga todos los usuarios desde vendedores.txt.
int cargar_usuarios(const char *ruta, Usuario *usuarios, int max);
// Verifica si el usuario y clave existen (-1 si no existe)
int verificar_login(Usuario *usuarios, int nusuarios, const char *user, const char *clave);

#endif
