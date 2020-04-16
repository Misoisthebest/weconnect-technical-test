SELECT
carrier_id,
MAX(price)
FROM flights

WHERE (dest_city = 'Seattle WA' AND origin_city = 'New York NY')
OR (dest_city = 'New York NY' AND origin_city = 'Seattle WA')

GROUP BY carrier_id;
