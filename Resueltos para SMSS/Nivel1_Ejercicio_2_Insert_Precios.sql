-- inserto el nuevo artículo
INSERT INTO articulos (NumeroArticulo, Nombre, Descripcion, UnidadMedida, VolumenM3, UnidadesPorBulto, PesoKilos, Color, CodigoEAN13,FechaIngreso)
VALUES (5004, 'Monitor Led 65', 'Monitor Full HD 65 pulgadas sonido all-round', 'Unidad', 0.0700, 3, 4.50, 'Negro', '7790000000052', GETDATE());
-- capturamos el ID generado
DECLARE @NuevoID INT = SCOPE_IDENTITY();
-- le asignamos precio en ambas listas (Lista 1 y Lista 2)
INSERT INTO Articulos_Precios (Cod_Listas_Precios, ArticuloID, precio)
VALUES
(1, @NuevoID, 716000.00),
(2, @NuevoID, 734500.00)