SELECT bear_name, MAX(food_weight_kg) AS biggest_meal_kg
FROM polar_bears
INNER JOIN meal_log ON polar_bears.bear_id = meal_log.bear_id
WHERE date LIKE "2024-12%"
GROUP BY bear_name
ORDER BY biggest_meal_kg DESC;
