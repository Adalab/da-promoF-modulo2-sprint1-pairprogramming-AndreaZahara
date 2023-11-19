CREATE SCHEMA `northwind`;
Use `northwind`;



-- 4 Conociendo a las empleadas
SELECT employee_id, last_name, first_name
	FROM `employees`;
    
-- 5 Conociendo los productos más baratos
SELECT unit_price 
	FROM `products` 
    WHERE unit_price BETWEEN 0 AND 5;
    
-- 6 Conociendo los productos que no tienen precio
SELECT unit_price
	FROM `products`WHERE unit_price IS NULL;
    
-- 7 Comparando productos
SELECT product_id, product_name, unit_price
	FROM `products` WHERE  product_id < 10 AND unit_price <15;

-- 8 Cambiando de operadores
SELECT product_id, product_name, unit_price
	FROM `products` WHERE NOT product_id < 10 AND NOT unit_price < 15;
    
-- 9 Conociendo los paises a los que vendemos
SELECT DISTINCT ship_country
	FROM `orders`;
    
-- 10 Conociendo el tipo de productos que vendemos en Northwind
SELECT product_id, product_name, unit_price
	FROM `products`
    LIMIT 10;

-- 11 Ordenando los resultados
SELECT product_id, product_name, unit_price 
	FROM `products`
    ORDER BY product_id DESC
    LIMIT 10;

-- 12 Que pedidos tenemos en nuestra BBDD
SELECT DISTINCT order_id
	FROM `order_details`;
	
-- 13 Qué pedidos han gastado más
SELECT unit_price * quantity AS ImporteTotal
	FROM `order_details`
    ORDER BY ImporteTotal DESC 
    LIMIT 3;












    

    
    
    
    
    
    