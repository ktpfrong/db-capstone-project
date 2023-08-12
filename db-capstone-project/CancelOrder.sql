CREATE PROCEDURE CancelOrder(IN order_id INT)
DELETE FROM littlelemondb.Orders WHERE OrderID = order_id;

CALL CancelOrder(5);