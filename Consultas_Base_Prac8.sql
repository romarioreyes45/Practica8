-- Reyes Maldonado Oscar Romario 4AV1 Práctica 8
-- Consultas en la Base

-- Total de ventas (precio_total) por género de libro y mes
SELECT dim_libro.genero, dim_tiempo.mes, SUM(hechos_ventas_libros.precio_total) AS total_ventas
FROM hechos_ventas_libros
JOIN dim_libro ON hechos_ventas_libros.id_libro = dim_libro.id_libro
JOIN dim_tiempo ON hechos_ventas_libros.id_tiempo = dim_tiempo.id_tiempo
GROUP BY dim_libro.genero, dim_tiempo.mes
ORDER BY dim_tiempo.mes, dim_libro.genero;

-- Cantidad total de libros vendidos por tienda y autor
SELECT dim_tienda.nombre_tienda, dim_libro.autor, SUM(hechos_ventas_libros.cantidad) AS total_libros
FROM hechos_ventas_libros
JOIN dim_libro ON hechos_ventas_libros.id_libro = dim_libro.id_libro
JOIN dim_tienda ON hechos_ventas_libros.id_tienda = dim_tienda.id_tienda
GROUP BY dim_tienda.nombre_tienda, dim_libro.autor
ORDER BY dim_tienda.nombre_tienda, dim_libro.autor;

-- Ingresos totales por ciudad de cliente y trimestre
SELECT dim_cliente.ciudad, dim_tiempo.trimestre, SUM(hechos_ventas_libros.precio_total) AS ingresos_totales
FROM hechos_ventas_libros
JOIN dim_cliente ON hechos_ventas_libros.id_cliente = dim_cliente.id_cliente
JOIN dim_tiempo ON hechos_ventas_libros.id_tiempo = dim_tiempo.id_tiempo
GROUP BY dim_cliente.ciudad, dim_tiempo.trimestre
ORDER BY dim_cliente.ciudad, dim_tiempo.trimestre;

-- Total de ventas de cada cliente (precio_total acumulado) y número de libros comprados.
SELECT dim_cliente.nombre_cliente, SUM(hechos_ventas_libros.precio_total) AS total_ventas, 
									SUM(hechos_ventas_libros.cantidad) AS total_libros
FROM hechos_ventas_libros
JOIN dim_cliente ON hechos_ventas_libros.id_cliente = dim_cliente.id_cliente
GROUP BY dim_cliente.nombre_cliente
ORDER BY total_ventas DESC;