SELECT  *
FROM   cliente
WHERE   id NOT IN (SELECT DISTINCT id_cliente FROM factura);


SELECT  *
FROM   cliente
WHERE  NOT EXISTS
  (SELECT *
   FROM   factura
   WHERE  factura.id_cliente = cliente.id);
   
   
SELECT * 
FROM   cliente
LEFT JOIN factura
  ON factura.id_cliente = cliente.id
  WHERE factura.id_cliente  IS NULL;