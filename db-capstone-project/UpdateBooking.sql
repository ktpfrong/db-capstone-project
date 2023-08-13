DELIMITER //
USE liitlelemondb //

CREATE PROCEDURE UpdateBooking(IN booking_id INT, IN booking_date DATE)
BEGIN
UPDATE Bookings SET Date = booking_date WHERE BookingID = booking_id;
SELECT CONCAT("Booking ", booking_id, " updated") AS Confirmation;
END //

CALL UpdateBooking(9, "2022-12-17") //