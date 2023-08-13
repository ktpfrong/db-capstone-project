USE littlelemondb;
DELIMITER //

CREATE PROCEDURE AddBooking(IN booking_id INT, IN customer_id INT, IN booking_date DATE, IN table_no INT)
BEGIN
INSERT INTO Bookings VALUES (booking_id, booking_date, table_no, customer_id, 5, 7);
SELECT "New Booking Add" AS Confirmation FROM DUAL;
END //

CALL AddBooking(10,3,"2022-10-20",4) //

