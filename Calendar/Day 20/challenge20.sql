SELECT vendor_name
FROM vendors
INNER JOIN item_prices ON vendors.vendor_id = item_prices.vendor_id
WHERE price_usd < 10
GROUP BY vendor_name;
