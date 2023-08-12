USE littlelemondb;

SELECT cus.CustomerID, cus.CustomerName, o.OrderID, o.TotalCost, m.MenuID, m.Cuisine
FROM Customers cus
INNER JOIN Orders o
ON cus.CustomerID = o.CustomerID
INNER JOIN Menus m
ON o.MenuID = m.MenuID;