WITH RankedRating AS (
    SELECT RANK () OVER (ORDER BY AVG(rating)DESC) AS ranking, activity_name, AVG(rating) AS rating_avg
    FROM activities
    INNER JOIN activity_ratings ON activities.activity_id = activity_ratings.activity_id
    GROUP BY activity_name
)
SELECT ranking, activity_name, rating_avg
FROM RankedRating
WHERE ranking <= 2;
