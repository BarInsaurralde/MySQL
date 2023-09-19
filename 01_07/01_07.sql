UPDATE empleado
SET email = REPLACE(email, '@bicitemp.com', '@libreriatest.com')
WHERE email LIKE '%@bicitemp.com%';
