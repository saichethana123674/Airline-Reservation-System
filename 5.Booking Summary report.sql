

-- Booking Summary Report - With More Data

SELECT 
    b.booking_id,
    c.name AS customer_name,
    f.flight_number,
    f.source,
    f.destination,
    s.seat_number,
    b.status,
    b.booking_date
FROM Bookings b
JOIN Customers c ON b.customer_id = c.customer_id
JOIN Flights f ON b.flight_id = f.flight_id
JOIN Seats s ON b.seat_id = s.seat_id;

/* Will return a richer report like:

booking_id	customer_name	flight_number	source	destination	seat_number	status	booking_date

1	Kiran Rao	AI101	Delhi	Mumbai	1A	BOOKED	2025-07-20 10:00:00
3	Kiran Rao	AI101	Delhi	Mumbai	1C	CANCELLED	2025-07-20 10:10:00
7	Ravi Kumar	AI102	Mumbai	Bangalore	3A	BOOKED	2025-07-20 10:15:00
...	...	...	...	...	...	...	...
*/