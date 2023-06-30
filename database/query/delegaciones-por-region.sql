SELECT regiones.region, regiones.sede,  COUNT(*) total 
FROM delegaciones
INNER JOIN 
regiones ON regiones.id = delegaciones.id_region
WHERE delegaciones.delegacion LIKE '%C.T.%'
GROUP BY regiones.region, regiones.sede