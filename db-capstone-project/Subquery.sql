SELECT m.MenuID FROM Menus m
INNER JOIN Orders o
ON m.MenuID = o.MenuId
WHERE o.Quantity = ANY(SELECT Quantity FROM Orders WHERE Quantity > 2);