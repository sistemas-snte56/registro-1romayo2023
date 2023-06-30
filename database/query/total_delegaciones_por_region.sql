SET @num = 0;

SELECT 
@num := @num + 1 AS Num,
delegaciones.id,
delegaciones.delegacion,
delegaciones.nivel,
regiones.region,
regiones.sede
FROM 
delegaciones

INNER JOIN
regiones ON delegaciones.id_region = regiones.id

-- JOIN(SELECT @num := 0 ) AS n


WHERE 
regiones.id = 11 

ORDER BY
delegaciones.id
