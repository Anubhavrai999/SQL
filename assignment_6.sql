create database assignment_6;
use assignment_6;

 create table employees(
emp_id int primary key,
name varchar(100),
dept_name varchar(100),
salary int);

insert into employees(emp_id,name,dept_name,salary)
values(1,"John","HR",5000),
      (2,"Alice","IT",7000),
      (3,"Bob","Finance",6000),
      (4,"Eve","IT",8000),
      (5,"Charlie","Finance",7500);
      
create table departments(
dept_id int,
dept_name varchar(100));

insert into departments(dept_id,dept_name)
values(1,"HR"),
      (2,"IT"),
	  (3,"Finance");
      
#1. Find employees with salaries greater than the average salary of all employees. 
select name,salary from employees where salary>(select avg (salary) from employees);

#2. Find employees whose salary is higher than the salary of 'Alice'. 
select name,salary from employees where salary>(select salary from employees where name="Alice");

#3. List employees who belong to a department that has the name 'IT'.
select name,dept_name from employees where dept_name in(select dept_name from departments where dept_name="IT");

#4. Get the names of employees who earn the highest salary in their department. 
select name,salary, dept_name from employees where salary in(select salary from employees where dept_name in(select dept_name from employees group by dept_name
having salary=max(salary)));
 
 #5. Retrieve the departments where at least one employee earns more than 7000.
 select dept_name,name,salary from employees where salary in(select salary from employees where salary>7000);
 
 #6. List employees who do not belong to any department in the departments table.
 select dept_name  from employees where dept_name in(select dept_name from employees group by dept_name having count(name) is null); 
 
 #7. Find the second-highest salary among employees. 
select name,salary from employees where salary =(select salary from employees order by salary desc limit 1,1);

#8. Retrieve the names of employees who work in the department with the highest number of employees. 
select name, dept_name from employees where dept_name in(select dept_name from employees group by  dept_name having count(*)=(select count(*) from employees group by  dept_name 
order by count(*) desc limit 1));

#9. Find employees who earn more than the average salary in their department. 
select name,salary from employees where dept_name in (select dept_name from employees group by dept_name having salary>avg(salary));

#10. Retrieve employees whose salary is above 7000 and belong to departments in the departments table. 
select name ,salary from employees where dept_name in (select dept_name from departments where dept_name in(select dept_name from employees where salary>7000));

#11. List all departments that have no employees. 
select dept_name from departments where dept_name in (select dept_name from employees where name is null);

#12. Find employees who have the same salary as another employee in a different department. 
select salary,dept_name from employees where salary in
(select a.salary from employees a join employees  b on a.salary=b.salary where a.dept_name!= b.dept_name);

#13. Get the total salary of the department with the maximum total salary. 
select sum(salary) from employees where dept_name =(select dept_name from employees group by dept_name order by sum(salary) desc limit 1);

#14. Retrieve employees whose department has more than two employees. 
select name from employees where dept_name in (select dept_name from employees group by dept_name having count(name)>2);

#15. Find employees whose salary is higher than the average salary of employees in the IT department. 
select name,salary from employees where salary > (select avg(salary) from employees where dept_name="IT");
