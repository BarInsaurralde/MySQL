DROP TRIGGER IF EXISTS `libreria`.`autor_BEFORE_INSERT`;

DELIMITER $$
USE `libreria`$$
CREATE DEFINER = CURRENT_USER TRIGGER `libreria`.`autor_BEFORE_INSERT` BEFORE INSERT ON `autor` FOR EACH ROW
BEGIN
	set new.nombre = concat(upper(substring(new.nombre,1,1)), substring(new.nombre,2));   
	set new.apellido = concat(upper(substring(new.apellido,1,1)), substring(new.apellido,2));   
END$$
DELIMITER ;