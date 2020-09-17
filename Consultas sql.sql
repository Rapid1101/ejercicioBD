
 # Respuesta a inciso B ?
 SELECT producto.nombre, producto.producto ,COUNT(*) as Cantidad_vendida from
producto INNER JOIN venta 
on producto.producto=venta.producto
gROUP BY producto.nombre ORDER BY Cantidad_vendida DESC;



 # Respuesta a inciso C ?
 SELECT cajero.nomApels, producto.nombre as producto, producto.precio, maquina_registradora.piso FROM producto 
INNER JOIN venta  ON producto.producto = venta.producto
INNER JOIN cajero  ON cajero.cajero = venta.cajero
INNER JOIN maquina_registradora ON maquina_registradora.maquina = venta.maquina;

 # Respuesta a inciso D ?
SELECT maquina_registradora.piso, SUM(precio) as total_ventas FROM producto 
INNER JOIN venta  ON producto.producto = venta.producto
INNER JOIN maquina_registradora ON maquina_registradora.maquina = venta.maquina GROUP BY piso;

 # Respuesta a inciso E ?
SELECT cajero.cajero, cajero.nomApels, SUM(producto.precio) as total_ventas  FROM producto 
INNER JOIN venta  ON producto.producto = venta.producto
INNER JOIN cajero ON cajero.cajero = venta.cajero GROUP BY cajero.cajero;

 # Respuesta a inciso F ?
SELECT DISTINCT cajero.cajero, cajero.nomApels from cajero 
INNER JOIN venta  ON cajero.cajero = venta.cajero
INNER JOIN maquina_registradora  ON maquina_registradora.maquina = venta.maquina
WHERE maquina_registradora.piso IN (
	SELECT maquina_registradora.piso as total_ventas FROM producto 
INNER JOIN venta  ON producto.producto = venta.producto
INNER JOIN maquina_registradora ON maquina_registradora.maquina = venta.maquina GROUP BY maquina_registradora.piso HAVING SUM(precio)<5000
);
