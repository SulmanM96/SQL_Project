--Ex.1.

-- Q1. Write a query that lists all Customers in either Paris or London. Include Customer ID, Company Name and all address fields.
SELECT CustomerID, CompanyName, Address, City, Region, PostalCode, Country FROM Customers Where City= 'Paris' OR City= 'London';

-- Q2. List all products stored in bottles.
Select * FROM Products WHERE QuantityPerUnit LIKE '%Bot%';

-- Q3. Repeat question above, but add in the Supplier Name and Country.
Select br.CompanyName, br.Country FROM Suppliers br INNER JOIN Products p ON p.SupplierID = p.supplierID WHERE QuantityPerUnit LIKE '%Bot%';

-- Q4. Write an SQL Statement that shows how many products there are in each category. Include Category Name in result set and list the highest number first.
SELECT CategoryID, UnitPrice FROM Products ORDER BY UnitPrice DESC;

-- Q5.List all UK employees using concatenation to join their title of courtesy, first name and last name together. Also include their city of residence.
SELECT TitleOfCourtesy, FirstName, LastName, City AS "UK Employees" FROM Employees Where Country= 'UK';

-- Q6.List Sales Totals for all Sales Regions (via the Territories table using 4 joins) with a Sales Total greater than 1,000,000. Use rounding or FORMAT to present the numbers.


-- Q7. Count how many Orders have a Freight amount greater than 100.00 and either USA or UK as Ship Country.
SELECT Freight, ShipCountry FROM Orders WHERE Freight < 100.00 AND ShipCountry= 'USA' OR ShipCountry= 'UK';

-- Q8. Write an SQL Statement to identify the Order Number of the Order with the highest amount of discount applied to that order.
SELECT OrderID, Discount FROM [Order Details] ORDER BY Discount DESC;
  
--      EX2
-- Q2.1 Write the correct SQL statement to create the following table:
-- Spartans Table – include details about all the Spartans on this course. Separate Title, First Name and Last Name into separate columns, and include University attended, course taken and mark achieved. Add any other columns you feel would be appropriate.
-- IMPORTANT NOTE: For data protection reasons do NOT include date of birth in this exercise.
-- CREATE DATABASE my_user_db;

--     CREATE TABLE Spartan_Table(

--     PersonID int,
--     TitleOfCourtesy varchar(255),
--     FirstName varchar(255),
--     LastName varchar(255),
--     Class varchar(255),
--     Stream varchar(255),
--     University_Attended Bit,
--     University_Course varchar(255),
--     Grade_Achieved int,
--     Masters_Completed int,

--     )

--  Q2.2. Write SQL statements to add the details of the Spartans in your course to the table you have created.

-- INSERT INTO Spartan_Table (PersonID, TitleOfCourtesy, FirstName, LastName, Class, Stream, University_Attended, University_Course, Grade_Achieved, Masters_Completed)
-- VALUES ('1', 'Mr.', 'Thomas', 'Dam', 'Engineering''26', 'C#''Developer', 1, 'Psychology', 1, 0);

-- INSERT INTO Spartan_Table (PersonID, TitleOfCourtesy, FirstName, LastName, Class, Stream, University_Attended, University_Course, Grade_Achieved, Masters_Completed)
-- VALUES ('2', 'Mr.', 'Rahib', 'Sayed', 'Engineering''26', 'C#''Developer', 1, 'Computer''Science', 1, 0);

-- INSERT INTO Spartan_Table (PersonID, TitleOfCourtesy, FirstName, LastName, Class, Stream, University_Attended, University_Course, Grade_Achieved, Masters_Completed)
-- VALUES ('3', 'Mr.', 'Jerome', 'Hanciles', 'Engineering''26', 'C#''Developer', 1, 'Games''and''Design', 1, 0);

-- INSERT INTO Spartan_Table (PersonID, TitleOfCourtesy, FirstName, LastName, Class, Stream, University_Attended, University_Course, Grade_Achieved, Masters_Completed)
-- VALUES ('4', 'Mr.', 'Tevin', 'Muparadzi', 'Engineering''26', 'C#''Developer', 1, 'Bio''med', 1, 0);

-- INSERT INTO Spartan_Table (PersonID, TitleOfCourtesy, FirstName, LastName, Class, Stream, University_Attended, University_Course, Grade_Achieved, Masters_Completed)
-- VALUES ('5', 'Mr.', 'Matthew', 'Shaw', 'Engineering''26', 'C#''Developer', 1, 'Computer''Science', 1, 1);

-- INSERT INTO Spartan_Table (PersonID, TitleOfCourtesy, FirstName, LastName, Class, Stream, University_Attended, University_Course, Grade_Achieved, Masters_Completed)
-- VALUES ('6', 'Miss.', 'Rume', 'Rhuada', 'Engineering''26', 'C#''Developer', 1, 'Something', 1, 0);

-- INSERT INTO Spartan_Table (PersonID, TitleOfCourtesy, FirstName, LastName, Class, Stream, University_Attended, University_Course, Grade_Achieved, Masters_Completed)
-- VALUES ('7', 'Miss.', 'Yolanda', 'Simpson', 'Engineering''26', 'C#''Developer', 1, 'Computer''Science', 1, 0);

-- INSERT INTO Spartan_Table (PersonID, TitleOfCourtesy, FirstName, LastName, Class, Stream, University_Attended, University_Course, Grade_Achieved, Masters_Completed)
-- VALUES ('8', 'Miss.', 'Mishu', 'Jahur', 'Engineering''26', 'C#''Developer', 1, 'Maths', 1, 1);

-- INSERT INTO Spartan_Table (PersonID, TitleOfCourtesy, FirstName, LastName, Class, Stream, University_Attended, University_Course, Grade_Achieved, Masters_Completed)
-- VALUES ('9', 'Miss.', 'Faduma', 'Hussein', 'Engineering''26', 'C#''Developer', 1, 'Bio''Chem', 1, 0);


--     Q3
-- Q3.1 List all Employees from the Employees table and who they report to.

SELECT Employees.Firstname, Employees.Lastname, LineManager.Firstname, LineManager.Lastname FROM Employees 
LEFT OUTER JOIN Employees LineManager ON Employees.reportsto = LineManager.EmployeeID 
WHERE Employees.Reportsto IS NOT NULL

--Since Andrew is the Vice president he doesn't report to anyone


--Q3.2 List all Suppliers with total sales over $10,000 in the Order Details table. Include the Company Name from the Suppliers Table and present as a bar chart
SELECT * FROM [Order Details] WHERE UnitPrice > 10.000;
--INNER JOIN Products p ON p.SupplierID = p.SupplierID;



-- Q3.3 List the Top 10 Customers YTD for the latest year in the Orders file. Based on total value of orders shipped. 
SELECT TOP 10 * FROM Orders
WHERE OrderDate='1998';

