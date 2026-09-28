-- =========================================================
-- 1. PERMISOS DEL ROL ANA
-- =========================================================
-- Ana puede gestionar clientes e interacciones.
-- Permisos: SELECT, INSERT, UPDATE, DELETE

GRANT SELECT, INSERT, UPDATE, DELETE
ON `empresa-retail-db`.`cliente`
TO 'ana'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE
ON `empresa-retail-db`.`interaccion`
TO 'ana'@'localhost';


-- =========================================================
-- 2. PERMISOS DEL ROL PEDRO
-- =========================================================
-- Pedro puede gestionar canales y campañas.
-- Puede consultar clientes, pero no modificarlos.

GRANT SELECT, INSERT, UPDATE, DELETE
ON `empresa-retail-db`.`canal`
TO 'pedro'@'localhost';

GRANT SELECT, INSERT, UPDATE, DELETE
ON `empresa-retail-db`.`campania`
TO 'pedro'@'localhost';

GRANT SELECT
ON `empresa-retail-db`.`cliente`
TO 'pedro'@'localhost';


-- =========================================================
-- 3. PERMISOS DEL ROL MARTA
-- =========================================================
-- Marta puede consultar conversiones.
-- También puede ejecutar procedimientos almacenados
-- relacionados con consultas de conversiones.

GRANT SELECT
ON `empresa-retail-db`.`conversion`
TO 'marta'@'localhost';

GRANT EXECUTE
ON PROCEDURE `empresa-retail-db`.`sp_count_conversion`
TO 'marta'@'localhost';

GRANT EXECUTE
ON PROCEDURE `empresa-retail-db`.`spSelectConversion`
TO 'marta'@'localhost';


-- =========================================================
-- 4. VERIFICACIÓN DE PERMISOS
-- =========================================================

SHOW GRANTS FOR 'ana'@'localhost';

SHOW GRANTS FOR 'pedro'@'localhost';

SHOW GRANTS FOR 'marta'@'localhost';