SELECT factura.id as factura, cliente.id, cliente.nombre
FROM cliente
LEFT JOIN factura ON factura.id_cliente = cliente.id
order by factura.id;