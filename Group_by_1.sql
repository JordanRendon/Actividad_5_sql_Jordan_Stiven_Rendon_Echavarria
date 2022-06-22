SELECT 
client_id AS id,
sales_value AS valorVentas,
DATE(sales.date) Fecha
FROM sales
GROUP BY id, valorVentas