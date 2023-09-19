SELECT factura.id, cliente.nombre
FROM factura
INNER JOIN cliente ON factura.id_cliente = cliente.id
order by factura.id;