SELECT 
	a.ArticuloID, 
	a.NumeroArticulo, 
	a.Nombre, 
	ap.Cod_Listas_Precios, 
	ap.precio 
FROM articulos a 
INNER JOIN articulos_Precios ap ON a.ArticuloID = ap.ArticuloID 
WHERE a.NumeroArticulo = 5004;
