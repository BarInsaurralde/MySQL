USE `libreria`;
DROP procedure IF EXISTS `pro_eliminarFactura`;

USE `libreria`;
DROP procedure IF EXISTS `libreria`.`pro_eliminarFactura`;
;

DELIMITER $$
USE `libreria`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_eliminarFactura`(IN idFactura INT)
BEGIN
	DECLARE existe_rollback BOOL DEFAULT FALSE;
	DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET existe_rollback = TRUE;
    
	START TRANSACTION;
	DELETE FROM detalle_factura WHERE detalle_factura.id_factura = idFactura;
	DELETE FROM factura WHERE factura.id = idFactura;
    
	IF existe_rollback THEN
		SELECT existe_rollback;
		ROLLBACK;
	ELSE 
		SELECT existe_rollback;
		COMMIT;
	END IF;        
END$$

DELIMITER ;
;

