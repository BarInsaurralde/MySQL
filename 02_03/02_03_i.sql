CREATE OR REPLACE VIEW lista_clientes AS
SELECT c.id, c.nombre, c.apellido, c.email
FROM cliente c;