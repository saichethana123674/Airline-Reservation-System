
-- Triggers for Booking Updates and Cancellations

-- Bookings for flight 1 (AI101)
INSERT INTO Bookings (customer_id, flight_id, seat_id, status)
VALUES 
(1, 1, 1, 'BOOKED'),
(2, 1, 2, 'BOOKED'),
(1, 1, 3, 'CANCELLED'),
(2, 1, 4, 'BOOKED'),
(1, 1, 5, 'CANCELLED'),
(2, 1, 6, 'BOOKED');

-- Bookings for flight 2 (AI102)
INSERT INTO Bookings (customer_id, flight_id, seat_id, status)
VALUES 
(1, 2, 7, 'BOOKED'),
(2, 2, 8, 'BOOKED'),
(1, 2, 9, 'CANCELLED'),
(2, 2, 10, 'BOOKED');

-- Add Corresponding Seats

-- Seats for flight 1 (AI101)
INSERT INTO Seats (flight_id, seat_number)
VALUES 
(1, '1A'), (1, '1B'), (1, '1C'), (1, '1D'),
(1, '2A'), (1, '2B');

-- Seats for flight 2 (AI102)
INSERT INTO Seats (flight_id, seat_number)
VALUES 
(2, '3A'), (2, '3B'), (2, '3C'), (2, '3D');

-- Add More Customers (for variety)

INSERT INTO Customers (name, email, phone)
VALUES 
('Ravi Kumar', 'ravi@example.com', '9999911111'),
('Priya Nair', 'priya@example.com', '9999922222'),
('Sandeep Rao', 'sandeep@example.com', '9999933333'),
('Divya Shah', 'divya@example.com', '9999944444'),
('Manoj Tiwari', 'manoj@example.com', '9999955555');


