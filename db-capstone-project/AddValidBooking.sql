DELIMITER //
USE littlelemondb//

CREATE PROCEDURE AddValidBooking(IN booking_date DATE, IN table_no INT)
BEGIN
DECLARE already_book VARCHAR(45);
START TRANSACTION;
INSERT INTO Bookings VALUES (5, booking_date, table_no, 2, 2, 7);
IF (SELECT COUNT(*) as cnt FROM Bookings WHERE Date = booking_date AND TableNo = table_no) = 1 
THEN SET already_book = "False";
ELSE SET already_book = "True";
END IF;

IF already_book = "True" THEN (SELECT CONCAT("Table ", table_no, " is already booked - booking cancelled") AS "Booking status" FROM DUAL);  
ROLLBACK;
ELSE (SELECT CONCAT("Done booking table number ", table_no) as "Booking status" FROM DUAL);
COMMIT;
END IF;
END; //

DELIMITER ;
CALL AddValidBooking("2022-10-13", 2);
