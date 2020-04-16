SELECT DISTINCT dest_city FROM flights
WHERE dest_city NOT IN(

SELECT DISTINCT dest_city FROM flights
WHERE origin_city = 'Seattle WA'
UNION
SELECT DISTINCT dest_city FROM flights
WHERE origin_city IN
(	SELECT DISTINCT dest_city FROM flights
	WHERE origin_city = 'Seattle WA')
	)
ORDER BY dest_city ASC;
