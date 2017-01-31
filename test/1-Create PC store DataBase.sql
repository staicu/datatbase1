/* Create the PCStore database */
/* Script Date: January 26,2017 */
/* Developed by:Elmira Amanollahi */

/* Syntax: create database_name */
create database pcstore_EA;

/* Switch to the current database pcstore_EA*/
use pcstore_EA;

/* create the Dinition of table customers*/
create table Customers (

 CustomerID varchar(5) not null,
 CompanyName varchar(40) not null,
 ContactName varchar(30) null,
 ContactTitle varchar(30) null,
 Address varchar(60) null,
 City varchar(15) null,
 Rigion varchar(15) null,
 PostalCode varchar(10) null,
 Country varchar(15) null,
 Phone varchar(24) null,
 Fax varchar(24) null,
 constraint  pk_Customers primary key (CustomerID asc)
 );
 
 /*Create the definition of the table orders*/
 create table Orders (
  OrderID int(10) not null auto_increment,
  OrderDate datetime not null,
  CustomerID varchar(5) null ,
  orderscustomersEmployeeID int(10) null,
  RequiredDate datetime null,
  ShippedDate datetime null,
  ShipVia int(10) null,
  Freight decimal(15,4) null,
  ShipName varchar(40) null,
  ShipAddress varchar(60) null,
  ShipCity varchar(15) null,
  shipRegion varchar(15) null,
  ShipPOstalCode varchar(10) null,
  ShipCountry varchar(15) null,
  constraint pk_Orders primary key (OrderID asc)
 );
 
 /* Create the foreign key(s) in table orders*/
 /*syntax:
 
 [add] constraint fk_table_name1_table_name2 
 foreign key (column_name) references table_name
 
 */
 /*1) Betwenn Orders and Customers Tables*/
 
 alter table Orders 
   add constraint fk_Orders_Customers foreign key (CustomerID)
   references Customers (CustomerID );
 /* create the Difnition of order Details*/
 use pcstore_EA;
 
 /*if the order detail table exists, drop it and then re_create it*/
 drop table if exists OrderDetails;
 create table OrderDetails(
OrderID int(10) not null,
productID int(10) not null,
UnitPrice decimal(10,4) null,
Quantity smallint(5) null,
Discount double(7,2) null,
constraint pk_OrderDetails primary key (OrderID asc, ProductID asc)
 
 
 );

/* create the Difnition of table products*/
create table products(
 ProductID int(10) not null auto_increment,
 ProductName varchar(40)  not null,
 supplierID int(10) null,
 CategoryID int(10) null,
 QuantityPerUnit  varchar(20) null,
 UnitPrice decimal(10,4) null,
 UnitsInStock smallint(5),
 UnitsInOrder smallint(5) null,
 ReorderLevel smallint(5) null,
 Discontinued tinyint(1) not null,
constraint pk_products primary key(ProductID)
);

/* create the Difnition of table Suplier*/
create table Supplier (
SupplierID int(10) not null auto_increment,
CompanyName varchar(40) not null,
Contactname varchar(30) null,
ContactTitle varchar(30),
Address varchar(30),
City varchar(15),
Region varchar(20),
PostalCode varchar(10) null,
Country varchar(10) null,
Phone int(24) null,
Fax int(24) null,
HomePage longtext null,
constraint pk_Supplier primary key (SupplierID asc)

);

/* create the Difnition of table Employee*/
create table Employee (
EmployeeID int(10) not null auto_increment,
LastName varchar(20) not null,
FirstName varchar(20) not null,
Title varchar(30) not null,
TitleOfCourtosy varchar(20) null,
BirthDate datetime null,
HireDate datetime null,
Address varchar(20) null,
City varchar(20) null,
Region varchar(20) not null,
postalCode varchar(10) null,
Country varchar(20) not null, 
HomePage varchar(20) not null,
Extension varchar(4) null,
Photo longblob null,
Notes longtext null,
ReportsTo int(10) not null, /*because it is related to the employeeID it has to be same datatype*/
constraint pk_Employee  primary key(EmployeeID)
);

/* create the Difnition of table Shippers*/

create table Shippers (
ShipperID int not null auto_increment,
CompanyName varchar(40) not null,
Phone varchar(24) null,

constraint pk_Shippers  primary key(ShipperID)

);

/* create the Difnition of table Categories */

create table Categories (
CategoryID int not null auto_increment,
CategoryName varchar(10) not null,
Description longtext not null,
Pictture longblob null,
constraint pk_Categories primary key(CategoryID)

);
/*2)between Orders and Shippers Tables*/


/* 3) between Orders and Employess Tables*/

