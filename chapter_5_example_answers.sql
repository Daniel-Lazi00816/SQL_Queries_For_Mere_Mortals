-- Chapter 5 Examples 
-- Sales Order Datanbase
USE SalesOrdersModify
-- What if we adjusted each product price by reducing it 5 percent.
SELECT CAST(WholesalePrice*.95 as bigint) AS Reduced_Price, p.ProductName FROM Product_Vendors pv
JOIN Products p ON p.ProductNumber = pv.ProductNumber
-- Show a list of orders made by each customer in descending order
SELECT c.CustFirstName + ' ' + c.CustLastName as Name, o.OrderDate FROM Orders o 
JOIN Customers c on c.CustomerID = o.CustomerID
ORDER BY o.OrderDate DESC
-- Compiel a complete list of vendor names, addresses, and phone numbers in vendor name order 
select VendName as Vendor_Name, VendStreetAddress  + ' ' + VendCity + ' ' + VendState + ' ' + VendZipCode as Address, VendPhoneNumber as Phone_Number
from Vendors
ORDER BY Vendor_Name ASC

-- Entertainment Agency Database
USE EntertainmentAgencyModify
-- Give the names of all our customers by city 
SELECT CustFirstName + ' ' + CustLastName as Name, CustCity as City from Customers
ORDER BY City
-- List all entertainers and their web sites
select EntStageName, EntWebPage from Entertainers
-- Show the date of each agent's first six-month performance review

-- School Scheduling Database 
USE SchoolSchedulingModify
-- Give me a list of staff members, and show them in descending order of salary
SELECT * FROM Staff
ORDER BY Salary ASC
-- Get a list of staff phone numbers
SELECT StfPhoneNumber From Staff
-- List the names of all our students and order them by the cities they live in
SELECT StudFirstName + ' ' + StudLastName as Name, StudCity as City FROM Students
ORDER BY City ASC

