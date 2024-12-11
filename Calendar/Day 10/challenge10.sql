SELECT
    friend_name,
    COUNT(resolution) AS number_of_resolutions,
    SUM(is_completed) AS number_of_completed_resolutions,
    CAST(SUM(is_completed) AS REAL) * 100 / COUNT(resolution) AS success_percentage,
    CASE
        WHEN CAST(SUM(is_completed) AS REAL) * 100 / COUNT(resolution) > 75 THEN 'Green'
        WHEN CAST(SUM(is_completed) AS REAL) * 100 / COUNT(resolution) >= 50 THEN 'Yellow'
        ELSE 'Red'
    END AS success_category
FROM resolutions
GROUP BY friend_name;
