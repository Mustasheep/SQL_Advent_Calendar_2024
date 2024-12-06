SELECT polar_bears.bear_id, bear_name, SUM(distance_km) AS total_distance_traveled
FROM polar_bears
INNER JOIN tracking ON polar_bears.bear_id = tracking.bear_id
WHERE date LIKE '2024-12%'
GROUP BY polar_bears.bear_id
ORDER BY total_distance_traveled DESC
LIMIT 3;
