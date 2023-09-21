SELECT c.id, c.nombre,COUNT(*) as cantidad_compras 
FROM cliente AS c
INNER JOIN factura AS f ON f.id_cliente = c.id
GROUP BY c.id 
ORDER BY cantidad_compras DESC;