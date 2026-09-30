# Práctica SQL con la base Chinook

Proyecto personal para practicar SQL sobre la base de datos de ejemplo
[Chinook](https://github.com/lerocha/chinook-database), que representa
una tienda de música digital (clientes, facturas, canciones, artistas).

## Tecnologías
- PostgreSQL 16
- Docker / Docker Compose
- DBeaver

## Cómo ejecutarlo
1. Tener Docker instalado.
2. Clonar este repositorio.
3. Ejecutar:
```bash
   docker compose up -d
```
4. Conectarse con: host `localhost`, puerto `5432`, base `chinook`,
   usuario `postgres`, contraseña `postgres`.

## Contenido
| Archivo | Temas |
|---|---|
| `consultas/01_basicas.sql` | SELECT, WHERE, ORDER BY, LIMIT, COUNT |

## Algunos hallazgos
- La tienda tiene **59 clientes** y **412 facturas** (≈ 7 compras por cliente).
- Las pistas más largas no son canciones, sino **episodios de series de TV**.
- Hay datos de facturas entre **2021 y 2025**.