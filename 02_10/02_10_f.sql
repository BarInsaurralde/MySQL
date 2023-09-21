SET SQL_SAFE_UPDATES = 1;
DELETE FROM empleado
WHERE id NOT IN (
	SELECT * 
	FROM (SELECT MIN(e.id)
	FROM empleado e GROUP BY e.email) empleado_mantener
)