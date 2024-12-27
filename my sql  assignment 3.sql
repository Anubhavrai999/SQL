create database company1;

use company1;

create table staff(emp_id int Primary key auto_increment, first_name varchar(20),last_name varchar(20),
department varchar(10),salary int,hire_date date);

insert into staff(first_name,last_name,department,salary,hire_date)
values("John","Doe","IT",60000.00,"2019-01-10"),
	  ("Jane","Smith","HR",55000.00,"2018-03-05"),
      ("Emily","Jones","IT",62000.00,"2020-07-23"),
      ("Micheal","Brown","Finance",70000.00,"2016-05-14"),
      ("Sarah","Davis","Finance",69000.00,"2017-11-18"),
      ("David","Johnson","HR",48000.00,"2021-09-10");

#1. Query is to find average salary of employees of each department 
select distinct department,avg(salary) from staff group by department;

#2. Query is to find total no of employees hired after 2019
select count(*) as "Total employees" from staff where hire_date>"2019-12-31";

#3. Query is to find total salary of each department and ordered them
select distinct department, sum(salary) as "Total Salary" from staff group by department order by sum(salary);

#4. Query is to find the highest salary in the finance department
select max(salary) as "Highest_Salary" from staff where department="Finance";

#5. Query is to get highest paid employees
select concat(first_name,"",last_name) AS Employee_Name,salary as
"Highest_paid_employees" from staff order by salary desc limit 3;

#6. Query is to find department with min average salary
select department,avg(salary) from staff group by department order by avg(salary) asc limit 1;

#7.Query is to display total no of employees of each department ordered by employees
select distinct department,count(*) from staff group by department order by count(*);

#8. Query is to find average salary of employees who hired before 2020
select avg(salary) as "Average salary of employees" from staff where hire_date<"2020-01-01";

#9. Query is to find the names of employees in the IT department ordered by hire date, with the most recently hired employees first
Select concat(first_name," ",last_name) AS Employee_Name ,hire_date from staff where department = "IT" order by hire_date desc;

#10. Query is to find the sum of salaries for all employees hired after January 1, 2019, ordered by salary
select sum(salary) as "Total Salary" from staff where hire_date>"2019-01-01" order by salary;

#11. Query is to find the employee with the lowest salary in the HR department
Select concat(first_name," ",last_name) AS Employee ,salary from staff where department = "HR" order by salary limit 1;

#12. Query is to find the total salary paid to employees in each department, but limit the result to the top 2 highest-paying departments
Select department, sum(salary) as "Total salary" from staff group by department order by sum(salary) desc limit 2;

#13. Query is to find the list of all employees hired after 2018, ordered by salary, and show only the first 4 employees
Select concat(first_name," ",last_name) AS Employee, salary from staff where hire_date>2018-12-31 order by salary limit 4;

#14. Query is to find the highest salary in the IT department, but limit the results to the top 1 result
Select department, max(salary) as "Highest Salary" from staff where department="IT";

#15. Query is to find the average salary of employees in each department and list only departments with an average salary greater than $60,000 
Select department, avg(salary) as "Average salary" from staff group by department having avg(salary)>60000;

