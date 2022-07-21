create database Employee_table;

-------UC11-creating the new tables for many to many relation-----------------

CREATE TABLE EmployeeDept(
DeptId int identity(1,1) PRIMARY KEY,

EmployeeID int FOREIGN KEY REFERENCES EmployeeDept);
SELECT* FROM  EmployeeDept;
INSERT INTO EmployeeDept(EmployeeID) values(1);
INSERT INTO EmployeeDept(EmployeeID) values(2);
INSERT INTO EmployeeDept(EmployeeID) values(3);
INSERT INTO EmployeeDept(EmployeeID) values(4);
INSERT INTO EmployeeDept(EmployeeID) values(5);
INSERT INTO EmployeeDept(EmployeeID) values(6);
INSERT INTO EmployeeDept(EmployeeID) values(7);

SELECT* FROM  EmployeeDept;

create table payroll
(
	Payroll_ID int not null primary key,
	Basic_Pay money not null,
	Deduction float not null,
	Taxable real, 
	Income_Tax float,
	Netpay real, 
)

insert into payroll values
	(111,400000,200.20,2000,50000,25000),
	(112,500000,600.20,3000,70000,55000),
	(113,500000,600.20,3000,70000,55000),
	(114,700000,9900.10,4000,80000,56000)

select *from payroll

create table Company
(
	Company_ID int primary key,
	ComapnyName varchar(20)
)

insert into Company values
	(501,'Infosys'),
	(502,'Bridgelab'),
	(503,'TCS'),
	(504,'Wipro')

select * from Company

create table Employees
(
	Employee_ID int not null primary key,
	Name varchar(20) not null,
	Gender varchar(1) not null,
	Basic_pay money not null,
	StartDate date not null,
	PhoneNumber varchar(10),
	Addres varchar(60),
	CompanyEmployeeID int FOREIGN KEY REFERENCES Company(Company_ID),
	PayrolID int FOREIGN KEY  REFERENCES Payroll(Payroll_ID)
)

insert into Employees values
	(001,'kalpak','M',700000,'2019-07-13','7894561230','Badravathi',501,111),
	(002,'Jivesh','M',800000,'2020-08-05','8975833278','Shivamoga',502,112),
	(003,'Gurpreet','M',600000,'2019-08-09','8874563210','Davanagere',503,113),
	(004,'Shivraj','M',900000,'2018-07-05','8638527410','Haveri',504,114);

select * from Employees