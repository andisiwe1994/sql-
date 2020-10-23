SELECT * FROM Customers;

 SELECT FirstName FROM Customers;

 SELECT FirstName FROM Customers
   WHERE CustomerID = 1;

 Update Customers
   SET FirstName='Lerato',
   LastName='Mabitso'
   WHERE CustomerID = 1;

 DELETE FROM Customers
   WHERE CustomerID = 2;

 SELECT COUNT(DISTINCT Status)
   FROM Orders;

 RETURN MAX(Amount)
   FROM Payments;

 SELECT * FROM Customers
   ORDER BY Country;

 SELECT * FROM products
   WHERE buyprice BETWEEN 100 AND 600;

 SELECT * FROM Customers
    Where Country = 'Germany'
    AND City = 'Berlin';

 SELECT * FROM Customers
    Where City = 'Cape Town'
    OR City = 'Durban';

 SELECT * FROM Products
    Where Buyprice > 500;

 RETURN SUM(amount)
    FROM Payments;

 SELECT COUNT(Dateshipped)
    FROM Orders;

 SELECT 'Rands:R' || AVG(BuyPrice_r),
    'Dollar:$' || AVG(buyprice_r)/12
    FROM Products;

 SELECT * FROM Payments
    INNER JOIN Customers
    ON Payments.CustomerID = Customers.CustomerID;

 SELECT *FROM Products
    WHERE  'Turnable front wheels'