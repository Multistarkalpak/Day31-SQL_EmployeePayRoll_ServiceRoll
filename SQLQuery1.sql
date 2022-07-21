-------To Create Database-------
Create database ADDRESS_BOOK_SERVICES


-------To Create Table (UC2)----
Create table Employee_PayRoll(
Emp_ID int identity(1,1) PRIMARY KEY,----first 1=it should be start with first row and second indicate 1=increment by 1---
Name varchar(200),
Salary float,
StartDate datetime 
);

------To insert the data into Table----
insert into Employee_PayRoll
(Name,Salary,StartDate)values('Gurpreet',30000,getdate());

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
UPDATE Employee_PayRoll set Salary=50000 where Name='vishwas';
UPDATE Employee_PayRoll set Salary=50001,StartDate=getdate() where Name='kalpak';
UPDATE Employee_PayRoll set Salary=50001 where Name='Gurpreet';
UPDATE Employee_PayRoll set Salary=50001 where Name='kalpak';

------------UC7-sum,avrage,min,max,count-------------------
SELECT * FROM  Employee_PayRoll;
SELECT SUM(Salary) as TotalSalary from employee_payroll;
SELECT avg(Salary) as AvergeSalary from employee_payroll;
SELECT  MIN(Salary) as MINIMUMSalary from employee_payroll;
SELECT MAX(Salary) as MaximumSalary from employee_payroll;
SELECT COUNT(Salary) from employee_payroll;

------TO GET THE MINIMUM SALARY WITH MINIMUM SALARY------------
SELECT * FROM employee_payroll Salary where
 Salary=(select min(Salary)as MINIMUMSALARY FROM employee_payroll);

 SELECT * FROM employee_payroll Salary where
 Salary=(select MAX(Salary)as MAXIMUMSALARY FROM employee_payroll);

 SELECT Name,StartDate FROM employee_payroll Salary where
 Salary=(select MAX(Salary)as MAXIMUMSALARY FROM employee_payroll);

 --------TO count the male and female separetly to all the employee-------
 SELECT COUNT(Salary)  from employee_payroll group by Gender;
 -----------we aslo displaying the gender column-------------
 SELECT COUNT(Salary) as generCount,Gender from employee_payroll group by Gender;
  --------TO count the male and female separetly to particular the employee-------

  --------UC8-Extending the table bye by adding dept,phone,address columns---------
ALTER TABLE employee_payroll
ADD PhoneNumber bigint;
 --while adding not null we have to pass default values because we are altering it----------
ALTER TABLE employee_payroll
ADD Department varchar(200)NOT NULL default'HR';
 
select * from employee_payroll;

ALTER TABLE employee_payroll
ADD Address varchar(200) default 'Chennai'; 

-------------UC9 Extend the employee table----------------
ALTER TABLE Emlpoyee_PayRoll ADD BasicSalary float,Deductions float,TaxablePay float,IncomeTax float,NetPay float;
select *from Employee_PayRoll

--------------UC10 ability to make same employee for the two different department-----------
SELECT* FROM  Employee_PayRoll;
UPDATE Employee_PayRoll set Department='Sales', Address ='Bengaluru',BasicSalary=456786, Deductions=200,TaxablePay=3000 where Name='Jivesh';
UPDATE Employee_PayRoll set Department='Marketing', Address ='Bengaluru',BasicSalary=456796, Deductions=300,TaxablePay=2000 where Name='kalpak';
UPDATE Employee_PayRoll set Department='HR',Address ='Bengaluru',BasicSalary=356786, Deductions=270,TaxablePay=3000 where Name='Shivraj';
UPDATE Employee_PayRoll set Department='Marketing',Address ='Bengaluru',BasicSalary=459786, Deductions=280,TaxablePay=3000 where Name='Abhishek';
UPDATE Employee_PayRoll set Department='Sales', Address ='Bengaluru',BasicSalary=456786, Deductions=200,TaxablePay=3000 where Name='Gurupreet';
UPDATE Employee_PayRoll set Department='Sales', Address ='Bengaluru',BasicSalary=456786, Deductions=200,TaxablePay=3000 where Name='Vishwas';