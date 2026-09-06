- -----------------------------------------
-- TechStore — Consultas Básicas SELECT
-- Autor: Lucas Villarroel Arancibia
-- Fecha: [Completar fecha de entrega]
-- -----------------------------------------
 
-- Consulta 1: Exploración general de la tabla sales
-- SELECT * tiene sentido solo en fase de exploración inicial o debugging,
-- cuando necesitamos ver la estructura completa de una tabla desconocida.
-- NO se recomienda en producción porque trae columnas innecesarias
-- (afecta rendimiento) y rompe si la tabla cambia su estructura después.
SELECT * FROM sales;
 
-- Consulta 2: Selección de columnas específicas para finanzas
SELECT customer_id, product_id, total_amount
FROM sales;
 
-- Consulta 3: Selección con alias en español para stakeholders
SELECT
    order_date   AS fecha_pedido,
    product_name AS nombre_producto,
    quantity     AS cantidad_unidades
FROM sales;
