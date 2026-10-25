-- 1. Eliminamos primero los mails asociados por la clave foránea 
DELETE FROM Proveedores_Mails 
WHERE mail LIKE '%[suspicious link removed]%'; 
-- 2. Eliminamos los proveedores repetidos 
DELETE FROM Proveedores 
WHERE tax_id = 'TAX-20287-X';
