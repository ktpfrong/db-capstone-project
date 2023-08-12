CREATE VIEW OrdersView AS
SELECT OrderID, Quantity, TotalCost
FROM littlelemondb.Orders
WHERE Quantity > 2;

Select * from OrdersView;