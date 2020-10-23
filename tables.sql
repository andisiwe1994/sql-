CREATE DATABASE Umuzi;

CREATE TABLE Customers(
	CustomerID int,
	FirstName varchar(50),
	LastName varchar(50),
	Gender varchar,
	Address varchar(200),
	Phone int,
	Email varchar(100),
	City varchar(20),
	Country varchar(50),
	PRIMARY KEY (CustomerID)
);

CREATE TABLE Employees(
	EmployeeID int,
	FirstName varchar(50),
	LastName varchar(50),
	Email varchar(100),
	JobTitle varchar(20),
	PRIMARY KEY (EmployeeID)	  
);

CREATE TABLE Orders (
      OrderID int,
      ProductID int,
      PaymentID int,
      FulfilledByEmployeeID int,
      DateRequired DateTime,
      DateShipped DateTime,
      Status varchar(20),
);

CREATE TABLE Payments (
      CustomerID int,
      PaymentID int,
      PaymentDate DateTime,
      Amount decimal,
      FOREIGN KEY(CustomerID) REFERENCES Customers(CustomerID)
)

CREATE TABLE Products (
      ProductID int,
      ProductName varchar(100),
      Description varchar(300),
      BuyPrice decimal,
)