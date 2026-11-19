# SleepMovies – Base de datos

Scripts SQL (MySQL 8) del sistema **Taquilla de Cine (Sleep Movies)**.

Integrantes: [Dayanna Romero y Valentina Arango]

## Archivos

| Archivo | Contenido |
|---|---|
| `sleepmovies_db.sql` | Estructura (DDL): crea el esquema `sleepmovies` y las tablas |
| `sleepmoviesdatos.sql` | Datos de ejemplo (INSERT) |
| `diagrama_relacional.png` | Diagrama entidad-relación |

## Modelo

Tres tablas con relaciones de 1 a muchos:

- `peliculas` (1) → (N) `funciones`, mediante `funciones.id_pelicula`
- `funciones` (1) → (N) `compras`, mediante `compras.id_funcion`

Campos principales:

- **peliculas:** idpeliculas, titulo, genero, duracion, clasificacion
- **funciones:** idfunciones, id_pelicula, fecha_hora, sala, precio, cupos_disponibles
- **compras:** idcompras, id_funcion, nombre_cliente, cantidad_boletas, valor_total, fecha_compra

## Cómo usarlo

1. Abre MySQL Workbench y conéctate a tu servidor local.
2. Abre `sleepmovies_db.sql` y ejecútalo completo (rayo).
3. Ejecuta `USE sleepmovies;`, abre `sleepmoviesdatos.sql` y ejecútalo.
4. Verifica con `SELECT * FROM peliculas;`.
