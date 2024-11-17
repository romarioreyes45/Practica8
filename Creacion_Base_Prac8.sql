-- Reyes Maldonado Oscar Romario 4AV1 Práctica 8
-- Creación de Tablas para la Base

-- Tabla de dimensión tiempo
CREATE TABLE dim_tiempo (
    id_tiempo SERIAL PRIMARY KEY,
    año INT,
    mes INT,
    dia INT,
    trimestre INT
);

-- Tabla de dimensión libro
CREATE TABLE dim_libro (
    id_libro SERIAL PRIMARY KEY,
    titulo VARCHAR(100),
    autor VARCHAR(100),
    genero VARCHAR(50),
    precio_unitario NUMERIC(10, 2)
);

-- Tabla de dimensión cliente
CREATE TABLE dim_cliente (
    id_cliente SERIAL PRIMARY KEY,
    nombre_cliente VARCHAR(100),
    edad INT,
    genero VARCHAR(10),
    ciudad VARCHAR(50)
);

-- Tabla de dimensión tienda
CREATE TABLE dim_tienda (
    id_tienda SERIAL PRIMARY KEY,
    nombre_tienda VARCHAR(100),
    ciudad VARCHAR(50),
    pais VARCHAR(50)
);

-- Tabla de hechos
CREATE TABLE hechos_ventas_libros (
    id_venta SERIAL PRIMARY KEY,
    id_tiempo INT,
    id_libro INT,
    id_cliente INT,
    id_tienda INT,
    cantidad INT,
    precio_total NUMERIC(10, 2),
    CONSTRAINT fk_id_tiempo FOREIGN KEY (id_tiempo) REFERENCES dim_tiempo(id_tiempo),
    CONSTRAINT fk_id_libro FOREIGN KEY (id_libro) REFERENCES dim_libro(id_libro),
    CONSTRAINT fk_id_cliente FOREIGN KEY (id_cliente) REFERENCES dim_cliente(id_cliente),
    CONSTRAINT fk_id_tienda FOREIGN KEY (id_tienda) REFERENCES dim_tienda(id_tienda)
);