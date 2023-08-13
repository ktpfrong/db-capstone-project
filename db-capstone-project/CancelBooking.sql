USE littlelemondb;
DELIMITER //

CREATE PROCEDURE CancelBooking(IN booking_id INT)
BEGIN
DELETE FROM Bookings WHERE BookingID = booking_id;
SELECT CONCAT("Bookings ", booking_id, " cancelled") AS Confirmation FROM DUAL;
END //

DELIMITER ;
CALL CancelBooking(9);
