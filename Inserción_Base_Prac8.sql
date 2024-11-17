-- Reyes Maldonado Oscar Romario 4AV1 Práctica 8
-- Inserción de datos para la Base

-- Datos para dim_tiempo
INSERT INTO dim_tiempo (año, mes, dia, trimestre) VALUES 
(2024, 1, 10, 1), 
(2024, 6, 15, 2), 
(2024, 12, 20, 4);

-- Datos para dim_libro
INSERT INTO dim_libro (titulo, autor, genero, precio_unitario) VALUES 
('La cancion de Aquiles', 'Madeline Miller', 'Ficción', 200.00), 
('El niño que perdió la guerra', 'Julia Navarro', 'No Ficción', 150.00), 
('Maestra de Hierro', 'Tricia Levenseller', 'Fantasía', 180.00), 
('El libro de Bill', 'Alex Hirsch', 'Ficción', 220.00), 
('Asesinatos en familia', 'Nina Simon', 'Misterio', 170.00);

-- Datos para dim_cliente
INSERT INTO dim_cliente (nombre_cliente, edad, genero, ciudad) VALUES 
('Roberto Sánchez', 30, 'Masculino', 'Nuevo Leon'), 
('Sarah Miller', 45, 'Femenino', 'Guadalajara'), 
('Karla Reyes', 25, 'Femenino', 'Ciudad de México'), 
('Carlos Barranco', 35, 'Masculino', 'Monterrey'), 
('Daniela Albarran', 40, 'Femenino', 'Querétaro');

-- Datos para dim_tienda
INSERT INTO dim_tienda (nombre_tienda, ciudad, pais) VALUES 
('Norte', 'Monterrey', 'México'), 
('Kansas', 'Kansas City', 'Estados Unidos'), 
('Centro', 'Ciudad de México', 'México');

-- Datos para hechos_ventas_libros
INSERT INTO hechos_ventas_libros (id_tiempo, id_libro, id_cliente, id_tienda, cantidad, precio_total) VALUES 
(1, 1, 1, 1, 2, 400.00), 
(2, 2, 2, 2, 1, 150.00), 
(3, 3, 3, 3, 3, 540.00), 
(1, 4, 4, 1, 1, 220.00), 
(2, 5, 5, 2, 2, 340.00), 
(3, 1, 1, 3, 2, 400.00), 
(1, 2, 2, 1, 1, 150.00), 
(2, 3, 3, 2, 3, 540.00), 
(3, 4, 4, 3, 1, 220.00), 
(1, 5, 5, 1, 2, 340.00);