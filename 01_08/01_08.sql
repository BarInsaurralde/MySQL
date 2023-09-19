SELECT * FROM libro 
WHERE titulo LIKE "%Creadores y herederos%";

SELECT COUNT(*) as existe FROM libro 
WHERE titulo LIKE "%Creadores y herederos%";

SELECT EXISTS(
	SELECT 1 
    FROM libro 
    WHERE titulo LIKE "%Creadores y herederos%"
) AS existe;