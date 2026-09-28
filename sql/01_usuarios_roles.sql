-- =========================================
-- CREACIÓN DE ROLES
-- =========================================

CREATE ROLE 'ana';
CREATE ROLE 'pedro';
CREATE ROLE 'marta';


-- =========================================
-- CREACIÓN DE USUARIOS
-- =========================================

CREATE USER 'ana_crm'@'localhost'
IDENTIFIED BY 'Retail2026!Caja';

CREATE USER 'pedro_mkt'@'localhost'
IDENTIFIED BY 'Retail2026!Stock';

CREATE USER 'marta_auditoria'@'localhost'
IDENTIFIED BY 'Retail2026!Admin';


-- =========================================
-- ASIGNACIÓN DE ROLES
-- =========================================

GRANT 'ana' TO 'ana_crm'@'localhost';

GRANT 'pedro' TO 'pedro_mkt'@'localhost';

GRANT 'marta' TO 'marta_auditoria'@'localhost';


-- =========================================
-- ROLES PREDETERMINADOS
-- =========================================

SET DEFAULT ROLE 'ana' TO 'ana_crm'@'localhost';

SET DEFAULT ROLE 'pedro' TO 'pedro_mkt'@'localhost';

SET DEFAULT ROLE 'marta' TO 'marta_auditoria'@'localhost';
