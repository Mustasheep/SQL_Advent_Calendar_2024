SELECT region, AVG(snowfall_inches) as average_snowfall
FROM ski_resorts
INNER JOIN snowfall ON ski_resorts.resort_id = snowfall.resort_id
GROUP BY region
ORDER BY average_snowfall DESC;
