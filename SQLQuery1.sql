-------To Create Database-------
Create database Payroll_Service2


-------To Create Table (UC2)----
Create table Employee_PayRoll(
Emp_ID int identity(1,1) PRIMARY KEY,----first 1=it should be start with first row and second indicate 1=increment by 1---
Name varchar(200),
Salary float,
StartDate datetime 
);

------To insert the data into Table----
insert into Employee_PayRoll
(Name,Salary,StartDate)values('Kalpak',30000,getdate());

insert into Employee_PayRoll
(Name,Salary,StartDate)values('Vishwas',350000,getdate());


------Retrieve data (UC4)-----
select *from Employee_PayRoll

------Retrieve data of particular empolyee(UC5)-----
SELECT * FROM  employee_payroll where StartDate between CAST('2019-04-01' as date) and GETDATE();
------------UC6-we have to add the other column as a gender to existing table-------
Alter table Employee_payroll
add Gender char(1)
update Employee_PayRoll set Gender='M';
UPDATE Employee_PayRoll set Salary=50000 where Name='Multistar';
UPDATE Employee_PayRoll set Salary=50001,StartDate=getdate() where Name='Hiraji';
UPDATE Employee_PayRoll set Salary=50001 where Name='Hiraji';
UPDATE Employee_PayRoll set Salary=50001 where Name='kalpu';