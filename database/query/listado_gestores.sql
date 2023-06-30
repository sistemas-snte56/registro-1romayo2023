SELECT 
users.name,
users.email,
delegaciones.delegacion,
delegaciones.nivel,
delegaciones.sede,
regiones.region,
regiones.sede
FROM users
INNER JOIN	delegaciones ON users.id_delegacion = delegaciones.id
INNER JOIN	regiones ON delegaciones.id_region = regiones.id
ORDER BY delegaciones.id ASC
;
