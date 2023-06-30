



SELECT 

COUNT(*)
FROM 
regiones
INNER JOIN 
delegaciones ON delegaciones.id_region = regiones.id
WHERE
regiones.id = 1 AND
delegaciones.delegacion LIKE '%D-I-%'