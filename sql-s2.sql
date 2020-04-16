SELECT DISTINCT
carriers.name,
weekdays.day_of_week,
flights.flight_num
FROM flights
INNER JOIN carriers ON carriers.cid = flights.carrier_id
INNER JOIN weekdays ON weekdays.did = flights.day_of_week_id
WHERE origin_city = 'Seattle WA' AND dest_city = 'Boston MA'
AND day_of_week = 'Monday'
AND name = 'Alaska Airlines Inc.';
