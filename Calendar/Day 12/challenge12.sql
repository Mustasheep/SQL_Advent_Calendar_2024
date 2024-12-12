SELECT globe_name, COUNT(figurine_type) AS number_of_figurines, material
FROM snow_globes
INNER JOIN figurines ON snow_globes.globe_id = figurines.globe_id
GROUP BY globe_name
ORDER BY number_of_figurines DESC
LIMIT 3;
