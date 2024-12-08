SELECT vendor_name, SUM(quantity_sold * price_per_unit) as total_revenue
FROM vendors
INNER JOIN sales ON vendors.vendor_id = sales.vendor_id
GROUP BY vendor_name
ORDER BY total_revenue DESC
LIMIT 2;
