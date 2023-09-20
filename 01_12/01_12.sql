INSERT INTO empleado 
(
	SELECT 
		NULL,
		nombre, 
        apellido, 
        email 
	FROM empleado 
	WHERE id = 5
)