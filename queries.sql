-- ------------------------------------------
-- Sample Queries
-- ------------------------------------------

-- 7.1 Books per author:
-- Ammount
SELECT BookAuthors.AuthorID, Authors.Name AS AuthorName, COUNT(*) AS BookCount, GROUP_CONCAT(CONCAT(Books.BookID, '-', Books.Name)) AS 'Books(ID-Name)'
FROM BookAuthors
INNER JOIN Authors ON Authors.AuthorID=BookAuthors.AuthorID
INNER JOIN Books ON Books.BookID=BookAuthors.BookID
GROUP BY AuthorID
ORDER BY AuthorID ASC;

-- 7.2 Authors per book:

SELECT BookAuthors.BookId, Books.Name AS BookName,  COUNT(*) AS AuthorCount, GROUP_CONCAT(CONCAT(Authors.AuthorID, '-', Authors.Name)) AS 'Authors(ID-Name)'
FROM BookAuthors
INNER JOIN Books ON Books.BookID=BookAuthors.BookID
INNER JOIN Authors ON Authors.AuthorID=BookAuthors.AuthorID
GROUP BY BookID
ORDER BY BookID ASC;

-- 7.3 Author royalties on a book

SELECT BookAuthors.AuthorID, Authors.Name AS AuthorName, BookAuthors.BookID, Books.Name AS BookName, FLOOR(BookAuthors.Royalty*100) AS 'Royalty(%)'
FROM BookAuthors
INNER JOIN Authors ON Authors.AuthorID=BookAuthors.AuthorID
INNER JOIN Books ON Books.BookID=BookAuthors.BookID
ORDER BY AuthorID ASC;

-- 7.4 Book royalties per author

SELECT BookAuthors.BookID, Books.Name AS BookName, BookAuthors.AuthorID, Authors.Name AS AuthorName, FLOOR(BookAuthors.Royalty*100) AS 'Royalty(%)'
FROM BookAuthors
INNER JOIN Books ON Books.BookID=BookAuthors.BookID
INNER JOIN Authors ON Authors.AuthorID=BookAuthors.AuthorID
ORDER BY BookID ASC;

-- 7.5 Books in a genre

SELECT Genres.GenreID, Genres.Name AS Genre, Count(*) AS BookCount, GROUP_CONCAT(CONCAT(Books.BookID, '-', Books.Name)) AS 'Books(ID-Name)'
FROM Genres
INNER JOIN Books ON Books.GenreID=Genres.GEnreID
GROUP BY GenreID
ORDER BY GenreID ASC;

-- 7.6 Books published by a publisher

SELECT Publishers.PublisherID, Publishers.Name AS PublisherName, COUNT(*) AS BookCount, GROUP_CONCAT(CONCAT(Books.BookID, '-', Books.Name)) AS 'Books(ID-Name)'
FROM Publishers
INNER JOIN Books ON Books.PublisherID=Publishers.PublisherID
GROUP BY PublisherID
ORDER BY PublisherID ASC;

-- 7.7 Editors per book

SELECT BookEditors.BookID, Books.Name AS BookName, COUNT(*) AS EditorCount, GROUP_CONCAT(CONCAT(Editors.EditorID, '-', Editors.Name)) AS 'Editors(ID-Name)'
FROM BookEditors
INNER JOIN Books ON Books.BookID=BookEditors.EditorID
INNER JOIN Editors ON Editors.EditorID=BookEditors.EditorID
GROUP BY BookID
ORDER BY BookID ASC;

-- 7.8 Books per editor

SELECT BookEditors.EditorID, Editors.Name AS EditorName, COUNT(*) AS BookCount, GROUP_CONCAT(CONCAT(Books.BookID, '-', Books.Name)) AS 'Books(ID-Name)'
FROM BookEditors
INNER JOIN Editors ON Editors.EditorID=BookEditors.EditorID
INNER JOIN Books ON Books.BookID=BookEditors.EditorID
GROUP BY EditorID
ORDER BY EditorID ASC;

-- 7.9 Books in an order

SELECT Orders.OrderID, COUNT(*) AS BookCount, GROUP_CONCAT(CONCAT(Books.BookID, '-', Books.Name)) AS 'Books(ID-Name)'
FROM Orders
INNER JOIN OrderDetails ON OrderDetails.OrderID=Orders.OrderID
INNER JOIN Books ON Books.BookID=OrderDetails.BookID
GROUP BY OrderID
ORDER BY ORDERID ASC;

-- 7.10 Orders for a book

SELECT Books.BookID, Books.Name AS BookName, COUNT(*) AS OrdersCount, SUM(OrderDetails.Quantity) AS BooksOrdered, GROUP_CONCAT(Orders.OrderID) AS 'ORDERS(ID)'
FROM Orders
INNER JOIN OrderDetails ON OrderDetails.OrderID=Orders.OrderID
INNER JOIN Books ON Books.BookID=OrderDetails.BookID
GROUP BY BookID
ORDER BY BookID ASC;

-- 7.11 Customer Orders

SELECT Customers.CustomerID, Customers.Name As CustomerName, GROUP_CONCAT(CONCAT(OrderDetails.BookID, '-', Books.Name, '-', OrderDetails.Quantity)) AS 'Order(BookID-BookName-Quantity)'
FROM Orders
INNER JOIN Customers ON Customers.CustomerID=Orders.CustomerID
INNER JOIN OrderDetails ON OrderDetails.OrderID=Orders.OrderID
INNER JOIN Books ON Books.BookID=OrderDetails.BookID
GROUP BY CustomerID
ORDER BY CustomerID ASC;

-- 7.12 Orders per customer

SELECT Customers.CustomerID, Customers.Name AS CustomerName, COUNT(*) AS OrderCount, GROUP_CONCAT(Orders.OrderID) AS 'ORDERS(ID)'
FROM Orders
INNER JOIN Customers ON Customers.CustomerID=Orders.CustomerID
GROUP BY CustomerID
ORDER BY CustomerID ASC;