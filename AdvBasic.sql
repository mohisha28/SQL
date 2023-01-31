-- Sales Person :
CREATE TABLE SalesPerson(
  SalesPersonNumber INTEGER PRIMARY KEY,
  SalesPersonName TEXT NOT NULL,
  CommPercentage INTEGER NOT NULL,
  YearHire INTEGER NOT NULL,
  OfficeNumber INTEGER NOT NULL
);

-- Customer :
CREATE TABLE Customer(
  CustomerNumber INTEGER PRIMARY  KEY,
  CustomerName TEXT NOT NULL,
  SalesPersonNumber INTEGER NOT NULL,
  HeadQuarterCity TEXT NOT NULL
);

-- Customer Employee :
CREATE TABLE CustomerEmployee(
  CustomerNumber INTEGER PRIMARY KEY,
  EmployeeNumber INTEGER NOT NULL,
  EmployeeName TEXT NOT NULL,
  Title TEXT NOT NULL
);

-- Product :
CREATE TABLE Product(
  ProductNumber INTEGER PRIMARY KEY,
  ProductName TEXT NOT NULL,
  UnitPrice INTEGER NOT NULL
);

-- Sales ;
CREATE TABLE Sales(
  SalesPersonNumber INTEGER PRIMARY KEY,
  ProductNumber INTEGER NOT NULL,
  Quantity INTEGER NOT NULL
);

-- Office :
CREATE TABLE Office(
  OfficeNumber INTEGER NOT NULL,
  Telephone INTEGER NOT NULL,
  Size INTEGER NOT NULL
);

-- insert values in SalesPerson :
INSERT INTO SalesPerson VALUES (100, 'Nikhil', 7 , 1990 , 3);
INSERT INTO SalesPerson VALUES (186, 'Navneet', 10 , 1993 , 7);
INSERT INTO SalesPerson VALUES (220, 'Adams', 8 , 1997 , 5);
INSERT INTO SalesPerson VALUES (340, 'Arpit', 13 , 1986 , 12);
INSERT INTO SalesPerson VALUES (55, 'Navdeep', 16 , 2000 , 53);
INSERT INTO SalesPerson VALUES (97, 'Aayush', 20 , 1993 , 76);
INSERT INTO SalesPerson VALUES (32, 'Ravi', 22, 1999, 200);
INSERT INTO SalesPerson VALUES (217, 'Harsh', 10 , 1982 , 19);
INSERT INTO SalesPerson VALUES (310, 'Rohan', 6 , 1986, 47);
INSERT INTO SalesPerson VALUES (432, 'Manav', 3, 2004 , 89);

-- insert values in Customer :
INSERT INTO Customer VALUES (789, 'General Hardware', 186 , 'London');
INSERT INTO Customer VALUES (456, 'Adhitya', 220 , 'New york');
INSERT INTO Customer VALUES (2331, 'Surya', 340 , 'New Delhi');
INSERT INTO Customer VALUES (1980, 'Vijay', 432 , 'Atlanta');
INSERT INTO Customer VALUES (1525, 'Anubhav', 100 , 'Vijaywada');
INSERT INTO Customer VALUES (1297, 'Rahul', 97 , 'Yorkshire');
INSERT INTO Customer VALUES (2022, 'General Hardware', 32, 'Atlanta');
INSERT INTO Customer VALUES (1700, 'Sai', 310 , 'New York');
INSERT INTO Customer VALUES (282, 'Nishant', 217 , 'Istanbul');
INSERT INTO Customer VALUES (462, 'Abhinav', 55 , 'Patna');

-- insert values in CustomerEmployee :
INSERT INTO CustomerEmployee VALUES (789, 1, 'Rohan', 'Apple');
INSERT INTO CustomerEmployee VALUES (456, 2,'Sohan' , 'Ball');
INSERT INTO CustomerEmployee VALUES (331, 3,'Manavohan' , 'Steel');
INSERT INTO CustomerEmployee VALUES (980, 4, 'Sakshi', 'Cups');
INSERT INTO CustomerEmployee VALUES (1200, 5, 'Manoj', 'Tomato');
INSERT INTO CustomerEmployee VALUES (1297, 6, 'Sid', 'Banana');
INSERT INTO CustomerEmployee VALUES (2022, 7, 'Raj', 'Toy');
INSERT INTO CustomerEmployee VALUES (700, 8, 'Aryan', 'Plane');
INSERT INTO CustomerEmployee VALUES (282, 9, 'Mohit', 'Teddy');
INSERT INTO CustomerEmployee VALUES (462, 10, 'Ravi', 'Case');

-- insert values in Product :
INSERT INTO Product VALUES (21765 , 'Cup' , 30);
INSERT INTO Product VALUES (22456 , 'Noodles' , 20);
INSERT INTO Product VALUES (25365 , 'Coffee' , 10);
INSERT INTO Product VALUES (23245 , 'Bornvita' , 220);
INSERT INTO Product VALUES (34233 , 'Surf' , 50);
INSERT INTO Product VALUES (56432 , 'Shoes' , 1000);
INSERT INTO Product VALUES (93804 , 'Bag' , 700);
INSERT INTO Product VALUES (97343 , 'Table' , 500);
INSERT INTO Product VALUES (83434 , 'Stand' , 100);
INSERT INTO Product VALUES (98325 , 'Drink' , 30);

-- insert values in Sales : 
INSERT INTO Sales VALUES (186, 21765,3000);
INSERT INTO Sales VALUES (220, 22456,6000);
INSERT INTO Sales VALUES (340, 25365,7000);
INSERT INTO Sales VALUES (55, 23245,1000);
INSERT INTO Sales VALUES (137, 24233,4400);
INSERT INTO Sales VALUES (32, 56432,2000);
INSERT INTO Sales VALUES (217, 21765,9000);
INSERT INTO Sales VALUES (310, 97343,1200);
INSERT INTO Sales VALUES (432, 83434,6000);
INSERT INTO Sales VALUES (100, 98325,5000);

-- insert values in Office :
INSERT INTO Office VALUES (3,8934873294,4);
INSERT INTO Office VALUES (7,8342334394,5);
INSERT INTO Office VALUES (5,9934939294,6);
INSERT INTO Office VALUES (12,7934273294,23);
INSERT INTO Office VALUES (53,6654343113,42);
INSERT INTO Office VALUES (76,6788655688,2);
INSERT INTO Office VALUES (200,9989348434,13);
INSERT INTO Office VALUES (19,9048592321,54);
INSERT INTO Office VALUES (47,9959345334,7);
INSERT INTO Office VALUES (89,9038492421,10);

select * from SalesPerson;
select * from Customer;
select * from CustomerEmployee;
select * from Product;
select * from Sales;
select * from Office;

-- Solutions : 
-- Q1 :
.print "List the commission percentage and year of hire of salesperson number 186"
select CommPercentage,  YearHire from SalesPerson where SalesPersonNumber = 186;
.print " "

-- Q2 :
.print "List the salesperson numbers and salesperson names of those salespersons who have a commission percentage of 10"
select SalesPersonNumber , SalesPersonName from SalesPerson where CommPercentage = 10;
.print " "

-- Q3 :
.print "List the salesperson number and salesperson name of all of the salespersons"
select SalesPersonNumber , SalesPersonName from SalesPerson;
.print " "

-- Q4 :
.print "List the salesperson numbers, salesperson names, and commission percentages of the salespersons whose commission percentage is less than 12"
select SalesPersonNumber , SalesPersonName , CommPercentage from SalesPerson where CommPercentage < 12;
.print " "

-- Q5 :
.print "List the customer numbers and headquarters cities of the customers that have a customer number of at least 1700"
select CustomerNumber , HeadQuarterCity from Customer where CustomerNumber >= 1700;
.print " "

-- Q6 :
.print "List the customer numbers, customer names, and headquarters cities of the customers that are headquartered in New York and that have a customer number higher than 1500"
select CustomerNumber , CustomerName , HeadQuarterCity from Customer where HeadQuarterCity = 'New York' and CustomerNumber >= 1500;
.print " "

-- Q7 :
.print "List the customer numbers, customer names, and headquarters cities of the customers that are headquartered in New York or that have a customer number higher than 1500"
select CustomerNumber, CustomerName , HeadQuarterCity from Customer where HeadQuarterCity = 'New York' OR CustomerNumber >= 1500;
.print " "

-- Q8 :
.print "List the customer numbers, customer names, and headquarters cities of the customers that are headquartered in New York or that satisfy the two conditions of having a customer number higher than 1500 and being headquartered in Atlanta"
select CustomerNumber , CustomerName , HeadQuarterCity  from Customer where HeadQuarterCity = 'New York' OR (CustomerNumber > 1500 AND HeadQuarterCity = 'Atlanta');
.print " "

-- Q9 :
.print "Which cities serve as headquarters cities for General Hardware customers"
select HeadQuarterCity from Customer where CustomerName = 'General Hardware';
.print " "

-- Q10 :
.print "Find the customer numbers, customer names, and headquarters cities of those customers with customer numbers greater than 1000. List the results in alphabetic order by headquarters cities"
select CustomerNumber , CustomerName , HeadQuarterCity from Customer where CustomerNumber > 1000 order by HeadQuarterCity;
.print " "

-- Q11 :
.print "Find the average number of units of the different products that Salesperson 137 sold (i.e., the average of the quantity values in the first three records of the SALES table)"
select avg(Quantity) from Sales where SalesPersonNumber = 137;
.print " "

-- Q12 :
.print "What is the largest number of units of Product Number 21765 that any individual salesperson has sold"
select max(Quantity) where ProductNumber = '21765';
.print " "

-- Q13 :
.print "How many salespersons have sold Product Number 21765"
select count(*) from Sales where ProductNumber = '21765';
.print " "

-- Q14 :
.print "Find the total number of units of all products sold by each salesperson"
select sum(Quantity) from Sales;
.print " "

-- Q15 :
.print "Find the total number of units of all products sold by each salesperson whose salesperson number is at least 150"
select sum(Quantity) from Sales where SalesPersonNumber >= 150;
.print " "

-- Q16 :
.print "Find the total number of units of all products sold by each salesperson whose salesperson number is at least 150"
select sum(Quantity) from Sales where SalesPersonNumber >= 150;
.print " "

-- Q17 :
.print "Find the total number of units of all products sold by each salesperson whose salesperson number is at least 150. Include only salespersons whose total number of units sold is at least 5000"
select sum(Quantity) from Sales where SalesPersonNumber >= 150 AND Quantity > 5000;
.print " "

-- Q18 :
.print "Find the name of the salesperson responsible for Customer Number 1525"
select SalesPersonName from SalesPerson,Customer where SalesPerson.SalesPersonNumber = Customer.SalesPersonNumber AND CustomerNumber = 1525;
.print " "

-- Q19 :
.print "List the names of the products of which salesperson Adams has sold more than 2000 units"
select ProductName from SalesPerson,Product,Sales where SalesPerson.SalesPersonNumber = Sales.SalesPersonNumber AND Sales.ProductNumber = Product.ProductNumber AND SalesPersonName = 'Adams' AND Quantity > 2000;
.print " "

-- Q20 :
.print "Which salespersons with salesperson numbers greater than 200 have the lowest commission percentage?’’ (We’ll identify salespersons by their salesperson number.)"
select SalesPersonName from SalesPerson where SalesPersonNumber > 200 AND CommPercentage = (select min(CommPercentage) from SalesPerson where SalesPersonNumber > 200);
