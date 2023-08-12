PREPARE GetOrderDetail FROM 'SELECT o.OrderID, o.Quantity, o.TotalCost FROM Orders o INNER JOIN Customers c ON o.CustomerID = c.CustomerID WHERE c.CustomerID = ?';

SET @id = 1;
EXECUTE GetOrderDetail USING @id;