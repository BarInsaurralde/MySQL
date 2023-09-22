SELECT GROUP_CONCAT(
	DISTINCT
		'MAX(CASE WHEN id_libro = "', id_libro, '" THEN cantidad_comprada ELSE NULL END) AS "', id_libro, '"'
    ORDER BY id_libro
) INTO @columnas_pivote
FROM detalle_factura;

SET @tabla_dinamica = CONCAT('
	SELECT id_cliente, ', @columnas_pivote, '
	FROM (
		SELECT f.id_cliente, df.id_libro, SUM(df.cantidad) AS cantidad_comprada
		FROM factura f
		INNER JOIN detalle_factura df ON f.id = df.id_factura
		GROUP BY f.id_cliente, df.id_libro
	) AS compras
	GROUP BY id_cliente
');

PREPARE consulta_tabla_dinamica FROM @tabla_dinamica;
EXECUTE consulta_tabla_dinamica;
DEALLOCATE PREPARE consulta_tabla_dinamica;
