SELECT 

usuario.id,
usuario.nombre,
usuario.apaterno,
usuario.amaterno,
usuario.curp,
usuario.rfc,
genero.genero,
usuario.telefono,
usuario.email,
usuario.npersonal,
delegaciones.nivel,
delegaciones.delegacion,
regiones.region,
regiones.sede
-- users.name

FROM usuario
INNER	JOIN genero ON usuario.id_genero = genero.id
INNER JOIN delegaciones ON usuario.id_delegacion = delegaciones.id
INNER JOIN regiones ON delegaciones.id_region = regiones.id
-- INNER JOIN users ON  usuario.id_users = users.id

-- WHERE usuario.id_users = 1
ORDER BY regiones.region, delegaciones.delegacion ASC
