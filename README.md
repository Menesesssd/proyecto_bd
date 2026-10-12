# Sistema de Pedidos y Domicilios

Base de datos relacional para un sistema de comercio electrónico de pedidos y domicilios.
Cubre: selección del producto, carrito, pago y asignación de repartidor.

Motor: MariaDB en XAMPP.

## Tablas

| Tabla | Descripción |
|---|---|
| cliente | Quien compra |
| producto | Lo que se vende |
| pedido | La compra del cliente |
| detalle_pedido | Productos de cada pedido |
| pago | Pago de cada pedido |
| repartidor | Quien entrega |
| entrega | Une el pedido con su repartidor |

## Archivos

- `SQL/pedidos_domicilios.sql`: crea la base de datos y las tablas
- `SQL/pedidos_domicilios_insert.sql`: inserta los datos de prueba
- `SQL/commands/01_DDL.sql` a `06_TCL.sql`: ejemplos de cada tipo de comando

## Cómo ejecutarlo

1. Iniciar MySQL en XAMPP
2. Abrir phpMyAdmin (`localhost/phpmyadmin`)
3. En la pestaña SQL, ejecutar en orden:
   `pedidos_domicilios.sql`, luego `pedidos_domicilios_insert.sql`, luego los archivos `01` a `06`