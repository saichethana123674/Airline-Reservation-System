

-- ✈ Flights Table (5 Sample Flights)

INSERT INTO Flights (flight_number, source, destination, departure_time, arrival_time) VALUES
('AI201', 'Delhi', 'Mumbai', '2025-07-20 08:00:00', '2025-07-20 10:00:00'),
('AI202', 'Mumbai', 'Bangalore', '2025-07-21 11:00:00', '2025-07-21 13:00:00'),
('AI203', 'Chennai', 'Delhi', '2025-07-22 09:30:00', '2025-07-22 12:30:00'),
('AI204', 'Kolkata', 'Hyderabad', '2025-07-23 14:00:00', '2025-07-23 16:45:00'),
('AI205', 'Pune', 'Ahmedabad', '2025-07-24 17:15:00', '2025-07-24 19:00:00');



-- 👤 Customers Table (10 Sample Customers)

INSERT INTO Customers (name, email, phone) VALUES
('Ravi Kumar', 'ravi@gmail.com', '9990000001'),
('Sneha Roy', 'sneha@gmail.com', '9990000002'),
('Amit Shah', 'amit@gmail.com', '9990000003'),
('Priya Das', 'priya@gmail.com', '9990000004'),
('Vikram Rana', 'vikram@gmail.com', '9990000005'),
('Neha Joshi', 'neha@gmail.com', '9990000006'),
('Arjun Mehta', 'arjun@gmail.com', '9990000007'),
('Divya Singh', 'divya@gmail.com', '9990000008'),
('Manoj Patil', 'manoj@gmail.com', '9990000009'),
('Anjali Kapoor', 'anjali@gmail.com', '9990000010');


-- 💺 Seats Table (20 Seats for Each Flight = 100 Seats)

-- Generate 20 seats per flight (seat numbers 1A to 5D)
INSERT INTO Seats (flight_id, seat_number) VALUES
-- Flight 1
(1, '1A'), (1, '1B'), (1, '1C'), (1, '1D'),
(1, '2A'), (1, '2B'), (1, '2C'), (1, '2D'),
(1, '3A'), (1, '3B'), (1, '3C'), (1, '3D'),
(1, '4A'), (1, '4B'), (1, '4C'), (1, '4D'),
(1, '5A'), (1, '5B'), (1, '5C'), (1, '5D'),

-- Flight 2
(2, '1A'), (2, '1B'), (2, '1C'), (2, '1D'),
(2, '2A'), (2, '2B'), (2, '2C'), (2, '2D'),
(2, '3A'), (2, '3B'), (2, '3C'), (2, '3D'),
(2, '4A'), (2, '4B'), (2, '4C'), (2, '4D'),
(2, '5A'), (2, '5B'), (2, '5C'), (2, '5D'),

-- Flight 3
(3, '1A'), (3, '1B'), (3, '1C'), (3, '1D'),
(3, '2A'), (3, '2B'), (3, '2C'), (3, '2D'),
(3, '3A'), (3, '3B'), (3, '3C'), (3, '3D'),
(3, '4A'), (3, '4B'), (3, '4C'), (3, '4D'),
(3, '5A'), (3, '5B'), (3, '5C'), (3, '5D'),

-- Flight 4
(4, '1A'), (4, '1B'), (4, '1C'), (4, '1D'),
(4, '2A'), (4, '2B'), (4, '2C'), (4, '2D'),
(4, '3A'), (4, '3B'), (4, '3C'), (4, '3D'),
(4, '4A'), (4, '4B'), (4, '4C'), (4, '4D'),
(4, '5A'), (4, '5B'), (4, '5C'), (4, '5D'),

-- Flight 5
(5, '1A'), (5, '1B'), (5, '1C'), (5, '1D'),
(5, '2A'), (5, '2B'), (5, '2C'), (5, '2D'),
(5, '3A'), (5, '3B'), (5, '3C'), (5, '3D'),
(5, '4A'), (5, '4B'), (5, '4C'), (5, '4D'),
(5, '5A'), (5, '5B'), (5, '5C'), (5, '5D');


-- 📦 Bookings Table (25 Sample Bookings, Randomized)

INSERT INTO Bookings (customer_id, flight_id, seat_id, status) VALUES
(1, 1, 1, 'BOOKED'),
(2, 1, 2, 'BOOKED'),
(3, 1, 3, 'CANCELLED'),
(4, 2, 21, 'BOOKED'),
(5, 2, 22, 'BOOKED'),
(6, 2, 23, 'BOOKED'),
(7, 2, 24, 'BOOKED'),
(8, 3, 41, 'BOOKED'),
(9, 3, 42, 'BOOKED'),
(10, 3, 43, 'CANCELLED'),
(1, 3, 44, 'BOOKED'),
(2, 4, 61, 'BOOKED'),
(3, 4, 62, 'BOOKED'),
(4, 4, 63, 'BOOKED'),
(5, 4, 64, 'BOOKED'),
(6, 5, 81, 'BOOKED'),
(7, 5, 82, 'BOOKED'),
(8, 5, 83, 'BOOKED'),
(9, 5, 84, 'BOOKED'),
(10, 5, 85, 'BOOKED'),
(1, 2, 25, 'BOOKED'),
(2, 2, 26, 'BOOKED'),
(3, 2, 27, 'BOOKED'),
(4, 1, 4, 'BOOKED'),
(5, 1, 5, 'BOOKED');












