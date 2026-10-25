SELECT p.nombre_empresa, m.mail, m.tipo_contacto 
FROM Proveedores p 
INNER JOIN Proveedores_Mails m ON p.Id_interno_Prov = m.Id_interno_Prov 
WHERE p.tax_id = 'TAX-20287-X';