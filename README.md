# Retail Project

Proyecto de base de datos para un sistema de gestión retail desarrollado en PostgreSQL.

## Descripción

El proyecto contiene la estructura inicial de una base de datos llamada `retail_project`, destinada a gestionar clientes, productos y ventas.

Se crearon las tablas:

* `clientes`: almacena la información de los clientes.
* `productos`: contiene los productos disponibles, sus precios y stock.
* `ventas`: registra las ventas realizadas y relaciona clientes con productos mediante claves foráneas.

El diseño incluye claves primarias, claves foráneas, restricciones `CHECK`, valores únicos y validaciones para mantener la integridad de los datos.

## Contenido

El repositorio contiene:

* `retail_project.sql`: script completo con la creación de la base de datos, tablas, restricciones, carga inicial de datos y operaciones de actualización y eliminación.

## Requisitos

Para ejecutar el proyecto se necesita:

* PostgreSQL
* pgAdmin o cualquier cliente compatible con PostgreSQL

## Ejecución

Primero se debe crear la base de datos:

```sql
CREATE DATABASE retail_project;
```

Luego, conectarse a la base de datos `retail_project` y ejecutar el archivo:

```text
retail_project.sql
```

El script crea las tablas en el orden correspondiente y realiza la carga inicial de datos dentro de una transacción.

## Estructura de relaciones

La tabla `ventas` se encuentra relacionada con:

* `clientes`, mediante `cliente_id`.
* `productos`, mediante `producto_id`.

De esta manera, cada venta queda asociada a un cliente y a un producto existente.

## Tecnologías

* PostgreSQL
* SQL
* Git / GitHub
