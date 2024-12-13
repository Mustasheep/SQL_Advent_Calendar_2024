SELECT recipient, sum(weight_kg) AS total_wight
FROM gifts
GROUP BY recipient
ORDER BY total_wight DESC;
