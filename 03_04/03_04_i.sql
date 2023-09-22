ALTER TABLE empleado
ADD COLUMN id_supervisor INT;

UPDATE `libreria`.`empleado` SET `id_supervisor` = '1' WHERE (`id` = '2');
UPDATE `libreria`.`empleado` SET `id_supervisor` = '3' WHERE (`id` = '5');
UPDATE `libreria`.`empleado` SET `id_supervisor` = '2' WHERE (`id` = '3');