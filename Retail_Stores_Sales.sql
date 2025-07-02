-- Retail Store Sales Database
CREATE DATABASE Retai_store_sales;
USE Retai_store_sales;
-- Create Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(50),
    Email VARCHAR(100)
);

-- Create Products Table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2)
);

-- Create Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Create OrderDetails Table
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
-- Insert Customers
INSERT INTO Customers(CustomerID,CustomerName,City,Email) VALUES
(1, 'Priyaka Sharma', 'Delhi', 'priya@example.com'),
(2, 'Rahul Mehta', 'Mumbai', 'rahul@example.com'),
(3,'Anjali sharma', 'Bangalore', 'anjali@example.com'),
(4,'Anil kumar', 'Indore', 'anili@example.com'),
(5, 'Kunal sharma', 'Bangalore', 'kunali@example.com'),
(6, 'parii sharma', 'mumbai', 'parii@example.com'),
(7, 'saloni modi', 'delhi', 'salonii@example.com'),
(8, 'prince kumar', 'Indore', 'prince@example.com'),
(9, 'pinki maheswari', 'Bangalore', 'pinki@example.com'),
(10, 'sunil pal', 'delhi', 'sunil@example.com'),
(11, 'pakhi datt', 'indore', 'pakhi@example.com'),
(12, 'ram singh', 'Bangalore', 'ram@example.com'),
(13, 'kajal jat', 'delhi', 'kajal@example.com'),
(14, 'ranu darti', 'Bangalore', 'ranu@example.com'),
(15, 'vinay jat', 'Bangalore', 'vinay@example.com'),
(16, 'raj sharma', 'Bangalore', 'raj@example.com'),
(17, 'nikhil sharma', 'delhi', 'nikhil@example.com'),
(18,'niharika patil', 'Bangalore', 'nihari@example.com'),
(19, 'harsha jat', 'indore', 'harsha@example.com'),
(20, 'mahi jat', 'indore', 'mahi@example.com');


-- Insert Products
INSERT INTO Products(ProductID,ProductName,Category,Price) VALUES
(101, 'Laptop', 'Electronics', 50000.00),
(102, 'Mobile Phone', 'Electronics', 15000.00),
(103, 'Bookshelf', 'Furniture', 3000.00),
(104, 'Chair', 'Furniture', 1200.00),
(105, 'Ipad', 'Electronics', 20000.00),
(106, 'Head Phones', 'Electronics', 8000.00),
(107, 'Desk', 'Furniture', 3000.00),
(108, 'Study Table', 'Furniture', 1200.00);

-- Insert Orders
INSERT INTO Orders (OrderID,CustomerID,OrderDate) VALUES
(1001, 1, '2025-06-10'),
(1002, 2, '2025-06-12'),
(1003, 1, '2025-06-15'),
(1004, 3, '2025-06-18'),
(1005, 6, '2025-06-10'),
(1006, 8, '2025-06-11'),
(1007, 5, '2025-06-12'),
(1008, 9, '2025-06-14'),
(1009, 11, '2025-06-16'),
(1010, 16, '2025-06-2'),
(1011, 12, '2025-06-6'),
(1012, 19, '2025-06-4'),
(1013, 14, '2025-06-8'),
(1014, 12, '2025-06-12'),
(1015, 17, '2025-06-3'),
(1016, 12, '2025-06-16'),
(1017, 11, '2025-06-17'),
(1018, 2, '2025-06-19'),
(1019, 13, '2025-06-13'),
(1020, 20, '2025-06-13'),
(1021, 1, '2025-06-18'),
(1022, 8, '2025-06-15'),
(1023, 15, '2025-06-20'),
(1024, 17, '2025-06-21'),
(1025, 4, '2025-06-26'),
(1026, 7, '2025-06-27'),
(1027, 3, '2025-06-21'),
(1028, 4, '2025-06-23'),
(1029, 1, '2025-06-26'),
(1030, 5, '2025-06-27'),
(1031, 18, '2025-06-25'),
(1032, 19, '2025-06-22'),
(1033, 1, '2025-06-28'),
(1034, 20, '2025-06-17'),
(1035, 14, '2025-06-9'),
(1036, 13, '2025-06-18'),
(1037, 1, '2025-06-10'),
(1038, 12, '2025-06-12'),
(1039, 11, '2025-06-15'),
(1040, 3, '2025-06-18'),
(1041,	1, '2025-06-10'),
(1042,	2,  '2025-06-12'),
(1043,	1,	'2025-06-15'),
(1044,	3,	'2025-06-18'),
(1045,	6,	'2025-06-10'),
(1046,	8,	'2025-06-11'),
(1047,	5,	'2025-06-12'),
(1048,	9,	'2025-06-14'),
(1049,	11,	'2025-06-16'),
(1050,	16,	'2025-06-02');

-- Insert OrderDetails
INSERT INTO OrderDetails(OrderDetailID,OrderID,ProductID,Quantity) VALUES
(1, 1001, 101, 1),
(2, 1002, 104, 2),
(3, 1003, 102, 1),
(4, 1004, 103, 1),
(5, 1005, 104, 4),
(6, 1006, 105, 1),
(7, 1007, 106, 2),
(8, 1009, 107, 1),
(9, 1009, 108, 1),
(10, 1010, 101, 4),
(11, 1011, 102, 1),
(12, 1012, 103, 2),
(13, 1013, 104, 1),
(14, 1014, 105, 1),
(15, 1015, 106, 4),
(16, 1016, 107, 1),
(17, 1017, 108, 2),
(18, 1018, 108, 1),
(19, 1019, 107, 1),
(20, 1020, 106, 4),
(21, 1021, 105, 1),
(22, 1022, 104, 2),
(23, 1023, 103, 1),
(24, 1024, 102, 1),
(25, 1025, 101, 4),
(26, 1026, 101, 1),
(27, 1027, 102, 2),
(28, 1028, 104, 1),
(29, 1029, 103, 1),
(30, 1030, 105, 4),
(31, 1031, 106, 1),
(32, 1032, 108, 2),
(33, 1033, 104, 1),
(34, 1034, 107, 1),
(35, 1035, 101, 4),
(36, 1036, 102, 1),
(37, 1037, 103, 2),
(38, 1038, 104, 1),
(39, 1039, 106, 1),
(40, 1040, 107, 4);


