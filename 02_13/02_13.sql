SELECT
    df.id_libro,
    l.titulo,
    MAX(df.cantidad) AS maxima_cantidad_vendida
FROM
    detalle_factura df
INNER JOIN libro l ON l.id = df.id_libro
GROUP BY df.id_libro, l.titulo;