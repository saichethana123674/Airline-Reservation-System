
--   Available Seats for a Given Flight
-- for flight1
SELECT s.seat_number
FROM Seats s
LEFT JOIN Bookings b 
    ON s.seat_id = b.seat_id AND b.status = 'BOOKED'
WHERE s.flight_id = 1 
  AND s.is_available = TRUE 
  AND b.booking_id IS NULL;


-- for flight2

SELECT s.seat_number
FROM Seats s
LEFT JOIN Bookings b 
    ON s.seat_id = b.seat_id AND b.status = 'BOOKED'
WHERE s.flight_id = 2 
  AND s.is_available = TRUE 
  AND b.booking_id IS NULL;

--  Flight Search by Source, Destination, and Date

SELECT *
FROM Flights
WHERE source = 'Delhi' 
  AND destination = 'Mumbai'
  AND departure_time > NOW();
  
SELECT *
FROM Flights
WHERE source = 'chennai' 
  AND destination = 'delhi'
  AND departure_time > NOW();


--  Available Seats Count per Flight

SELECT f.flight_number, COUNT(s.seat_id) AS available_seats
FROM Flights f
JOIN Seats s ON f.flight_id = s.flight_id
LEFT JOIN Bookings b ON s.seat_id = b.seat_id AND b.status = 'BOOKED'
WHERE s.is_available = TRUE AND b.booking_id IS NULL
GROUP BY f.flight_number;

--  All Booked Seats for a Specific Flight

SELECT s.seat_number, c.name AS customer_name
FROM Bookings b
JOIN Seats s ON b.seat_id = s.seat_id
JOIN Customers c ON b.customer_id = c.customer_id
WHERE b.flight_id = 1 AND b.status = 'BOOKED';