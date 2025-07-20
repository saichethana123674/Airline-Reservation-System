
# 🛫 Flight Booking System – SQL Database Project

This project simulates a basic **Flight Booking System** using **MySQL**, covering schema design, sample data population, and essential SQL queries for operations like booking, availability checking, and flight search.

---

## 📁 Project Structure

### 1. 🗃️ Database Schema

The database consists of the following tables:

- **Flights**
  - `flight_id`, `flight_number`, `source`, `destination`, `departure_time`, `arrival_time`

- **Customers**
  - `customer_id`, `name`, `email`, `phone`

- **Seats**
  - `seat_id`, `flight_id`, `seat_number`, `is_available`

- **Bookings**
  - `booking_id`, `customer_id`, `flight_id`, `seat_id`, `booking_date`, `status`

---

## 🧾 Sample Data

- **Flights**: 5 major routes with realistic schedules  
- **Customers**: 10 diverse customer profiles  
- **Seats**: 20 seats per flight (1A to 5D) for 5 flights = 100 seats  
- **Bookings**: 25 randomized bookings with some cancellations

---

## 🔍 Core SQL Queries

### ✅ 1. Available Seats for a Flight
```sql
SELECT s.seat_number
FROM Seats s
LEFT JOIN Bookings b ON s.seat_id = b.seat_id AND b.status = 'BOOKED'
WHERE s.flight_id = 1 AND s.is_available = TRUE AND b.booking_id IS NULL;
```

### 🔎 2. Search Flights by Source, Destination, and Date
```sql
SELECT *
FROM Flights
WHERE source = 'Delhi' AND destination = 'Mumbai' AND departure_time > NOW();
```

### 📊 3. Count of Available Seats per Flight
```sql
SELECT f.flight_number, COUNT(s.seat_id) AS available_seats
FROM Flights f
JOIN Seats s ON f.flight_id = s.flight_id
LEFT JOIN Bookings b ON s.seat_id = b.seat_id AND b.status = 'BOOKED'
WHERE s.is_available = TRUE AND b.booking_id IS NULL
GROUP BY f.flight_number;
```

### 📋 4. List All Booked Seats for a Flight
```sql
SELECT s.seat_number, c.name AS customer_name
FROM Bookings b
JOIN Seats s ON b.seat_id = s.seat_id
JOIN Customers c ON b.customer_id = c.customer_id
WHERE b.flight_id = 1 AND b.status = 'BOOKED';
```

### 📈 5. Booking Summary Report
```sql
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
```

---

## 🔧 Future Enhancements

- Add triggers to auto-update `is_available` on booking/cancellation
- Include admin and staff roles
- Extend to round trips and multi-leg bookings
- Integrate with front-end (e.g., HTML + PHP/Flask UI)

---

## 🛠️ Requirements

- MySQL 8.0+
- Any SQL client like MySQL Workbench or phpMyAdmin

---




