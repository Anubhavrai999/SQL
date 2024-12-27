create database company;
use company;
create table employee(id int,name varchar(100),position varchar(100),salary decimal(10.2),joindate datetime);
insert into employee(id,name,position,salary,joindate)
values(1,"Jhon Doe","Manager",55000.00,"2020-01-15"),
	  (2,"Jnae Smith","Developer",48000.00,"2019-07-10"),
      (3,"Alice Jhonson","Desiginer",45000.00,"2021-03-22"),
      (4,"Bob Brown","Developer",50000.00,"2018-11-01");
      select*from employee;
select*from employee where position!="Developer";
select*from employee;
update employee
set salary=46000.00 
where id=3;

delete from employee
where id=4;

select max(salary)from employee
where salary>48000.00;
ALTER TABLE employee
Add column email varchar(100);

update employee
set email="john.doe@company.com."
where id=1;

select name,salary from employee;
select count(*)from employee where joindate >"2020-01-1";
select*from employee order by salary desc;
alter table employee drop column email;
select*from employee order by salary desc limit 1;
