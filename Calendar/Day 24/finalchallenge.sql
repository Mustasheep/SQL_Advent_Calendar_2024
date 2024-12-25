SELECT delivery_date, SUM(gifts_delivered) OVER (ORDER BY delivery_date) AS total_gifts
FROM deliveries;
