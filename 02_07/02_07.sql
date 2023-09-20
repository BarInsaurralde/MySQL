SELECT
	c.id,
    c.nombre,
    c.email,
    SUM(
		IF(f.fecha BETWEEN '2021-01-01' AND '2021-12-31', df.cantidad * df.precio_unitario, 0)
	) AS total_compras
FROM cliente c
LEFT JOIN factura f ON c.id = f.id_cliente
LEFT JOIN detalle_factura df ON f.id = df.id_factura
GROUP BY c.id
ORDER BY total_compras DESC
LIMIT 3;
