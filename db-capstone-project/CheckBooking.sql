CREATE PROCEDURE CheckBooking(IN booking_date DATE, IN table_no INT)
SELECT CONCAT("Table ", TableNo, " is already booked") AS "Booking status" 
FROM Bookings
WHERE Date = booking_date AND TableNo = table_no;

CALL CheckBooking("2022-11-12", 3);