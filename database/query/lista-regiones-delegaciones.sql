SELECT 
regiones.region,
COUNT(*) Total_Delegaciones,
SUM(CASE WHEN delegaciones.delegacion LIKE '%D-I-%' THEN 1 ELSE 0 END) AS 'D-I_total',
SUM(CASE WHEN delegaciones.delegacion LIKE '%D-II-%' THEN 1 ELSE 0 END) AS 'D-II_total',
SUM(CASE WHEN delegaciones.delegacion LIKE '%D-III-%' THEN 1 ELSE 0 END) AS 'D-III_total',
SUM(CASE WHEN delegaciones.delegacion LIKE '%D-IV-%' THEN 1 ELSE 0 END) AS 'D-IV_total',
SUM(CASE WHEN delegaciones.delegacion LIKE '%C.T.%' THEN 1 ELSE 0 END) AS 'C.T._total'
FROM delegaciones
INNER JOIN regiones ON regiones.id = delegaciones.id_region
GROUP BY regiones.id

