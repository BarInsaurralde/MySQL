SELECT nombre, email, 'cliente' AS tabla FROM cliente
UNION
SELECT nombre, email, 'empleado' AS tabla FROM empleado;