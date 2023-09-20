SELECT
    e.nombre,
    SUM(
        CASE
            WHEN f.fecha BETWEEN '2022-01-01' AND '2022-12-31' THEN df.cantidad * df.precio_unitario
            ELSE 0
        END
    ) AS total_ventas
FROM empleado e
LEFT JOIN factura f ON e.id = f.id_empleado
LEFT JOIN detalle_factura df ON f.id = df.id_factura
GROUP BY e.nombre
ORDER BY total_ventas DESC;