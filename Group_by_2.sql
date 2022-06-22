SELECT 
products.id AS id,
products.name AS nombres,
products.price AS valor
FROM products
GROUP BY valor, nombres