--Create database
CREATE DATABASE Student;

--Create Table:
USE Student
CREATE TABLE StudentDetail(
 RollNo int ,
StudentName varchar(20),
PhnNo int, 
City varchar(30)
);

--Inserting in Table:
INSERT INTO StudentDetail(RollNo,StudentName,PhnNo,City) VALUES
 (01,'Aishwarya','9874583749','Soalpur'),	(02,'Chaitanya','873422749','Pune') ,(03,'Afroj','7763422749','Baramati'),
(04,'Bharat','7887822749','Nagpur'),(05,'Pooja','9989895449','Sangoal')
SELECT * FROM Student_Detail

--Update in Table:
UPDATE StudentDetail SET City = 'Surat' WHERE RollNo = 4;
SELECT * FROM StudentDetail

--Delete  in Table:
DELETE FROM StudentDetail WHERE RollNo = 3;
SELECT * FROM StudentDetail

--Select Query using Where clause:
SELECT RollNo, StudentName FROM StudentDetail where RollNo=1;

--CREATE TABLE EmployeeDetails:
CREATE TABLE EmployeeDetails( 
EmpID int ,
EmpName varchar(20),
PhnNO nvarchar(10), 
City varchar(30),
Salary int
);

--Inserting in Table EmployeeDetails:
INSERT INTO EmployeeDetails(EmpID,EmpName,PhnNo,City,Salary) VALUES
 (01,'Aishwarya','9874583749','Soalpur',9000),	(02,'Chaitanya','873422749','Pune',10000) ,(03,'Afroj','7763422749','Baramati',5000),
(04,'Bharat','7887822749','Nagpur',5000),(05,'Pooja','9989895449','Sangoal',6000)

SELECT *  FROM EmployeeDetails ;

--Find salary is less than 10000 from Employee_Details:
SELECT *  FROM EmployeeDetails WHERE Salary < 10000 ;

--Select Employee_Details where City starts from S.
SELECT * FROM EmployeeDetails where City like 'S%';

--OrderBy :
SELECT * FROM EmployeeDetails Order by EmpName;

--GroupBy :
SELECT count(EmpID),City from EmployeeDetails group by City ;

--Select max salary from EmployeDetails
SELECT max(Salary) AS maxsal FROM EmployeeDetails;

--Select min salary from EmployeDetails
SELECT min(Salary) AS minsal FROM EmployeeDetails;

--Concat
SELECT concat(EmpName, '',PhnNO,'',City)as EmpName from Employee_Details;

--GETDATE():
SELECT GETDATE();















