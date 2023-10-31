CREATE SCHEMA tienda_zapatillas;

USE tienda_zapatillas;

CREATE TABLE zapatillas(
	id_zapatillas INT AUTO_INCREMENT NOT NULL,
    modelo VARCHAR(45) NOT NULL,
    color VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_zapatillas));
    
CREATE TABLE clientes(
	id_clientes INT  NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(45) NOT NULL,
    numero_telefono INT(9) NOT NULL,
    email VARCHAR(45) NOT NULL, 
    direccion VARCHAR(45) NOT NULL, 
    ciudad VARCHAR(45) NOT NULL,
    provincia VARCHAR(45) NOT NULL, 
    pais VARCHAR(45) NOT NULL,
    codigo_postal VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_clientes));
    
CREATE TABLE empleados(
	id_empleados INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    tienda VARCHAR(45) NOT NULL,
    salario INT NOT NULL,
    fecha_incorporacion DATE NOT NULL,
    PRIMARY KEY (id_empleados)); 
    
CREATE TABLE facturas(
	id_facturas INT AUTO_INCREMENT NOT NULL,
    numero_factura VARCHAR(45) NOT NULL,
    fecha DATE NOT NULL,
    id_zapatillas INT NOT NULL, 
    id_clientes INT NOT NULL,
    id_empleados INT NOT NULL,
    PRIMARY KEY (id_facturas),
    CONSTRAINT fk_facturas_zapatillas
		FOREIGN KEY (id_zapatillas)
        REFERENCES zapatillas(id_zapatillas),
    CONSTRAINT fk_facturas_zapatillas_clientes
		FOREIGN KEY (id_clientes)
        REFERENCES clientes(id_clientes),
	CONSTRAINT fk_facturas_zapatillas_clientes_empleados
		FOREIGN KEY (id_empleados)
        REFERENCES empleados(id_empleados));

