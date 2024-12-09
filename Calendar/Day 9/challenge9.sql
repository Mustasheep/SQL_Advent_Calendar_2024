-- Este foi o desafio mais difícil que concluí, levei horas e precisei estudar conceitos novos que ainda não conhecia.
WITH RankedDishes AS (
    SELECT dish_name, event_name, CAST(calories AS REAL) / weight_g AS calorie_density,
        ROW_NUMBER() OVER (PARTITION BY events.event_id ORDER BY CAST(calories AS REAL) / weight_g DESC) AS top_3
    FROM menu
    JOIN events ON menu.event_id = events.event_id
)
SELECT dish_name, event_name, calorie_density
FROM RankedDishes
WHERE top_3 <= 3
ORDER BY calorie_density DESC;
