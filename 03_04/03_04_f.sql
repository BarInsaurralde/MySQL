WITH RECURSIVE Supervisor AS (
    SELECT id, nombre, apellido, id_supervisor
    FROM empleado
    WHERE id = 5
    UNION ALL
    SELECT e.id, e.nombre, e.apellido, e.id_supervisor
    FROM empleado e
    INNER JOIN Supervisor s ON e.id = s.id_supervisor
)
SELECT * FROM Supervisor;