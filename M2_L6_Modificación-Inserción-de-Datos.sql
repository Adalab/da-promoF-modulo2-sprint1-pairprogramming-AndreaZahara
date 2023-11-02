-- En este ejercicio vamos a corregir los errores que hemos encontrado en nuestras tablas.
-- Tabla Zapatillas:
-- Se nos ha olvidado introducir la marca y la talla de las zapatillas que tenemos en nuestra BBDD. Por lo tanto, debemos incluir:
-- 1.marca: es una cadena de caracteres de longitud máxima de 45 caracteres, no nula.
-- 2.talla: es un entero, no nulo. 

USE tienda_zapatillas;
ALTER TABLE zapatillas
	ADD COLUMN marca VARCHAR (45) NOT NULL,
	ADD COLUMN talla INT NOT NULL;
    
    
-- Tabla Empleados
-- 1.salario: es un entero, no nulo. Pero puede que el salario de nuestros empleados tenga decimales, por lo que le cambiaremos el tipo a decimal.    

ALTER TABLE empleados
	# ADD COLUMN salario INT NOT NULL,
ALTER TABLE empleados   
   MODIFY COLUMN salario FLOAT;
   
   -- Tabla Clientes
-- 1.pais: la hemos incluido en la tabla pero nuestro negocio solo distribuye a España, por lo que es una columna que no hará falta. La eliminaremos.

ALTER TABLE clientes
	DROP COLUMN pais;
    
-- Tabla Facturas:
-- 1.total: madre mía!!! Se nos ha olvidado incluir el total de la cada factura generada😨!Creemos esa columna con un tipo de datos decimal.    

ALTER TABLE facturas 
	ADD COLUMN total FLOAT
    
-- 2. Lo primero que vamos a hacer es insertar datos en nuestra BBDD con los siguientes datos:
    
INSERT INTO zapatillas (id_zapatillas, modelo, color, marca, talla)
		VALUES (1,"XQYUN","negro","Nike",42),
			(2,"UOPMN", "rosas","Nike",39),
			(3,"OPNYT","verdes","Adidas",35);
            
INSERT INTO empleados (id_empleados, nombre, tienda, salario, fecha_incorporacion)
	VALUES (1,"Laura","Alcobendas",2987,"2010-09-03"),
		(2,"María","Sevilla",null, "2001-04-11"),
        (3,"Ester","Oviedo",30165.98,"29-11-29");
-- nos daba error en el el date porque es in string
-- nos sigue dando error en el número decimal, ¡corregir!
        
    