-- nuevo proveedor
DECLARE @NuevoProvID INT;
-- 1 Inserto el proveedor
INSERT INTO Proveedores (tax_id, nombre_empresa, pais, sitio_web, id_moneda, banco, CBU)
VALUES (
	'TAX-20287-X',
	'Distribuciones Proter S.A.',
	'Argentina',
	'://distribucionesproter.com',
	1, -- Referencia a Pesos
	'Banco Galicia',
	'0170001234569' -- CBU de 13 dígitos
);

-- Capturamos el ID recien creado
SET @NuevoProvID = SCOPE_IDENTITY();

-- 2. Inserto los 2 mails asociados
INSERT INTO Proveedores_Mails (Id_interno_Prov, mail, tipo_contacto)
VALUES
(@NuevoProvID, 'ventas_distribuciones@distribucionesproter.com', 'Comercial'),
(@NuevoProvID, 'administracion_admin@distribucionesproter.com', 'Facturación');
