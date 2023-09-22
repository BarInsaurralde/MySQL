SELECT AVG(puntuacion) INTO @promedio_puntuacion FROM libro;

Select @promedio_puntuacion;

SELECT * FROM libro 
WHERE puntuacion > @promedio_puntuacion 
ORDER BY puntuacion DESC;