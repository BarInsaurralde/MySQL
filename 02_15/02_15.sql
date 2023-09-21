SELECT id_libro, SUM(cantidad)
from detalle_factura df
INNER JOIN factura f ON f.id = df.id_factura
WHERE fecha BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY id_libro;


SELECT id_libro, SUM(cantidad)
from detalle_factura df
INNER JOIN factura f ON f.id = df.id_factura
WHERE fecha BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY id_libro
HAVING SUM(cantidad) > 2;