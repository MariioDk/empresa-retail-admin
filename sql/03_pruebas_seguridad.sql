-- =========================================================
-- 1. PRUEBAS DEL USUARIO ANA
-- Usuario: ana_crm
-- Rol: ana
-- =========================================================

USE `empresa-retail-db`;

-- Verificar identidad del usuario
SELECT USER() AS usuario,
       CURRENT_USER() AS cuenta_mysql;

-- Prueba de lectura sobre clientes
SELECT *
FROM cliente;

-- Prueba de lectura sobre interacciones
SELECT *
FROM interaccion;


-- =========================================================
-- 2. PRUEBAS DEL USUARIO PEDRO
-- Usuario: pedro_mkt
-- Rol: pedro
-- =========================================================

USE `empresa-retail-db`;

-- Verificar identidad del usuario
SELECT USER() AS usuario,
       CURRENT_USER() AS cuenta_mysql;

-- Prueba de lectura sobre canales
SELECT *
FROM canal;

-- Prueba de lectura sobre campañas
SELECT *
FROM campania;

-- Pedro solamente tiene lectura sobre clientes
SELECT *
FROM cliente;


-- =========================================================
-- 3. PRUEBAS DEL USUARIO MARTA
-- Usuario: marta_auditoria
-- Rol: marta
-- =========================================================

USE `empresa-retail-db`;

-- Verificar identidad del usuario
SELECT USER() AS usuario,
       CURRENT_USER() AS cuenta_mysql;

-- Prueba de lectura sobre conversiones
SELECT *
FROM conversion;

-- =========================================================
-- Prueba del procedimiento sp_count_conversion
-- El procedimiento requiere un parámetro OUT
-- =========================================================

SET @cantidad_conversiones = 0;

CALL sp_count_conversion(@cantidad_conversiones);

SELECT @cantidad_conversiones AS cantidad_conversiones;


-- =========================================================
-- Prueba del procedimiento spSelectConversion
-- No requiere parámetros
-- =========================================================

CALL spSelectConversion();
