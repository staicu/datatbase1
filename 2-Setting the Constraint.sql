/*Set the Different types of constraints : 
primary key (pk)| foreign key  (fk)| unique (u) | check(ck) | default (df)

*/
/*add a unique constraint to the CategoryName in catgories table*/
alter table Categories
 add constraint u_CategoryName_Categories unique (categoryName);
 
 /*Add foreign key(s) to the order details*/
 
 /*1) beween the order details and Order tables*/
 alter table OrderDetails
 add constraint fk_OrderDetails_Orders foreign key (OrderID)
 references orders (OrderID);
 
 
  /*2) beween the order details and products tables*/
alter table OrderDetails
 add constraint fk_OrderDetails_products foreign key (productID)
 references products(productID);
 
 /*Add foreign key(s) to the orders */
 
 /*1) beween the orders  and Customers*/
 /*we already made it*/
 
 /*2) beween the orders  and Shippers*/
 alter table Orders 
 add constraint fk_Orders_Shippers foreign key (ShipVia)
 references Shippers(ShipperID);
 
 /*3) beween the orders  and Employees*/
  alter table Orders 
 add constraint fk_Orders_Employee foreign key (EmployeeID)
 references Employee (EmployeeID);
 
 /*Add foreign key(s) to the products */
 /*1) beween the products  and suppliers*/
alter table products 
add constraint fk_products_Supplier foreign key (SupplierID)
 references Supplier(supplierID);
 
 
  /*2) beween the products  and Categories*/
 alter table products 
add constraint fk_products_Categories foreign key (CategoryID)
 references Categories(CategoryID);
 
 /*set the default value of country to 'USA' in suppliers table*/
 alter table Supplier 
 alter Country set default 'USA' ;
 
 /*drop the default value*/
 alter table supplier 
 alter Country drop default;
 
 /*add a check constraint to the order dat in order tbl*/
 alter table Orders
 add constraint ck_OrderDate_Orders
 check(OrderDate >= current_date());

 
 
 
 
 
 
 
 
 
 
 