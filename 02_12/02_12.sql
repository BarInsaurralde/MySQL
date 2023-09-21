INSERT INTO detalle_factura 
(id_factura, id_libro, cantidad, precio_unitario)
SELECT f.id, l.id, 3, 100
FROM factura AS f, libro AS l
where f.id = 1 AND l.id = 2;