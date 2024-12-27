create database SalesCompany;
use SalesCompany;
create table sales(salesid int primary key auto_increment ,productId int,coustomerid int,saledate date,quantity int,unitprice int,region varchar(20));
insert into sales(salesid,productid,coustomerid,saledate,quantity,unitprice,region)
values(1,101,1001,"2024-01-05",5,200,"North"),
	  (2,102,1002,"2024-01-10",10,150,"East"),
      (3,103,1003,"2024-02-15",2,300,"North"),
      (4,104,1004,"2024-02-20",7,250,"West"),
      (5,101,1005,"2024-03-05",1,200,"East");
SELECT * FROM salescompany.sales;
#Q1 Write a query to calculate the total sales (Quantity * UnitPrice) for each product.
select distinct productid ,sum(quantity*unitprice) as "Total Sales" from sales group by productid;

#Q2Write a query to find the total number of products sold in each region
select  region, sum(quantity) as " Total Product Sold" from sales group by region;

#Q3Write a query to get the average sales amount per product. 
select distinct productid, avg(quantity)from sales group by productid;

#Q4Find the regions where total sales are more than 3000. 
select region, sum(quantity*unitprice) as "Product Sold" from sales group by region  having region>3000;

#Q5Write a query to get the maximum quantity sold for each product. 
select distinct productid, max(quantity) from sales group by productid;

#Q6Write a query to calculate the average quantity of products sold per region
select region, avg(quantity) as "Avg Quantity" from sales group by region;

#Q7Find the product IDs that have generated a total sales amount of more than 1000.  
select distinct productid, sum(quantity*unitprice)  from sales group by productid having sum(quantity*unitprice)>1000;

#Q8Write a query to get the total number of sales (rows) made for each customer. 
select coustomerid , count(*) as "Total Sales" from sales group by coustomerid;

#Q9Find the products for which the average quantity sold is less than 5. 
select productid, avg(quantity) as "Avg Quantity Sold" from sales group by productid having avg(quantity)<5;

#Q10Write a query to find the sum of total sales for each customer in each region. 
select coustomerid, region, sum(quantity*unitprice) as "Total Sales" from sales group by coustomerid, region;

#Q11Write a query to calculate the total sales for each month.
select month(saledate), sum(quantity*unitprice) as "Total Sales" from sales group by month(saledate);

#Q12Find the regions where the average unit price is more than 200. 
select region, avg(unitprice) from sales group by region having avg(unitprice)>200;

#Q13Write a query to get the minimum and maximum quantity sold per region.  
select region, min(quantity)as"Minimun",max(quantity)as"Maximum" from sales group by region;

#Q14Find the customers who have made more than 2 purchases.  
select coustomerid from sales group by coustomerid having count(*)>2;

#Q15Write a query to find the total sales for each product and filter only those products where the total sales exceed 1500.  
select productid, sum(quantity*unitprice) as "Total Sales" from sales group by productid having sum(quantity*unitprice)>1500;