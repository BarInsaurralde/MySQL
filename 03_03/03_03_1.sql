USE `libreria`;
DROP procedure IF EXISTS `pro_eliminarFactura`;

USE `libreria`;
DROP procedure IF EXISTS `libreria`.`pro_eliminarFactura`;
;

DELIMITER $$
USE `libreria`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `pro_eliminarFactura`(IN idFactura INT)
BEGIN
	DELETE FROM factura WHERE factura.id = idFactura;
	DELETE FROM detalle_factura WHERE detalle_factura.id_factura = idFactura;
END$$

DELIMITER ;
;

