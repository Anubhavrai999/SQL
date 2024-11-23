create database practice;
use practice;
create table employees(id int,name varchar(90),city varchar(90),phno int);
insert into employees(id,name,city,phno)
values(1,"Jhon","Delhi",6836598),
      (2,"Pessi","Mumbai",6836598),
      (3,"Khali","Punjab",8798564),
      (4,"Kane","Texas",78956987);
alter table employees add age int;
alter table employees add gender varchar(90);
truncate table employees;
select*from employees;
insert into employees(id,name,city,phno,age,gender)
values(1,"Jack","Texas",6836597,18,"M"),
	  (2,"Pepe","Lisbon",6865953,"37","M"),
      (3,"Haland","Man city",8989659,19,"M"),
      (4,"Alexa","New York",9996969,15,"F");
select*from employees;
select*from employees where age  >=19;
select*from employees where gender ="M" and city="Texas";
select*from employees where name like"%a";
select*from employees where name like"__%a";
select*from employees where age between 19 and 35;
select*from employees where age not between 19 and 37;
select*from employees order by name asc;
select distinct phno from employees;
create table employees2(id int not null unique,name varchar(100),age int,city varchar(100),salary int);
insert into employees2(id,name,age,city,salary)
values(1,"Obama",65,"New york",500000),
      (2,"Nelson",19,"Varginia",600000),
      (3,"Mike",30,"Toronto",700000),
      (4,"Sinchan",null,"Tokyo",null);
select*from employees2 where salary is null;
insert into employees2(id,name,age,city,salary)
values(5,"Hitler",26,"Berlin",null),
      (6,"Putin",32,"Moscov",null),
      (7,"Future",null,null,80000),
      (8,"Lil Wayne",null,null,90000);
select*from employees2;
select*from employees2 order by name desc limit 5 offset 0;
select count(id) from employees2 where salary >80000;
select sum(salary) from employees2;
select avg(salary) from employees2;
select min(salary) from employees2;
select max(salary) from employees2;
update employees2 set name ="Nulak" where id =5;
select*from employees2;  
delete from employees2 where id =1;
select*from employees2  limit 2,5;
select*from employees2 where city="Moscov" order by name limit 0;
select id,name,(age+5) as "new age" from employees2;
select pi();
select round(pi(),3);
select round(14.3);
select round(14.6);
select ceil(14.1);
select floor(14.6);
select pow(3,5);
select sqrt(64);
select sqrt(5),round(sqrt(5),2);
select abs(-2.25);
select abs(-20);
select rand()*100;
select sign(2);
select sign(-27);
select id,upper (name) as Name from employees2;
select id,ucase(name) as Name from employees2;
select id,lower(name) as Name from employees2;
select id,lcase(name) as Name from employees2;
select id,name, character_length(name) as length from employees2;
select id,name, length(name) as length from employees2;
select id,name,character_length(name) as length from employees2 limit 3;
select id,name,character_length(name) as length from employees2 where age >19;
select concat(id, name) as concat from employees2;
select concat(id,"  ", name) as concat from employees2;
select concat(id,"__", name) as concat from employees2;
select concat("Nulak-Rai") as name;
select concat("Nulak","_","Rai")as name;
select concat_ws("-","Nulak","Rai")as name;
select"     Nulak Rai     " as name;
select ltrim("     Nulak Rai    ") as name;
select rtrim("    Nulak Rai      ")as name;
select trim("     Nualk Rai      ")as name;
select position("world" in "hellow world")as position;
select instr("hellow world","ell")as instring;
select locate("ell" , "hellow world")as location;
select locate("l" , "hellow world",5)as location;
select substr( "Hellow World",3) as substring;
select substr("Hellow World",-6,3) as substring;
select substr("Anubhav Rai",3,5) as substring;
select substring_index("www.Nulak Rai.net",".",2) as substring_index;
select substring_index("www.Nulak Rai.net",".",-3) as substring_index;
select substring_index("www.Nulak Rai.net","a",-2) as substring_index;
select left("Anubhav Rai",2)as name;
select right("Anubhav Rai",3)as name;
select rpad("Anubhav Rai",20,"-")as name;
select lpad("Anubhav Rai",20,"&")as newname;
select reverse("Anubhav Rai")as name2;
select replace("Anubhav Rai","Rai","Goat")as name3;
select strcmp("Anubhav Rai","anubhav rai");
#left string is equal to right
select strcmp("Anubhav Rai","anubhav");
#left string is greater then right
select strcmp("Anubhav","Anubhav Rai");
#left string is smaller then right
select field("a","X","a","k");
select field("a","X","b","K");
select field (5,3,2,4,7,0,8,9);
select field (5,2,4,3,7,2,0,5);
select field("nulak","xaviers,Nulak,rai");
select find_in_set("anil","Xavier,anil,karan");
select hex("anubhav rai");
select space(100);
select format(234.343,2);
select current_date();
select curdate();
select sysdate();
select now();
select date("2019-10-15 09:03:21");
select month("2019-10-15 09:03:21");
select monthname("2019-10-15 09:03:21");
select year("2019-10-15 09:03:21");
select quarter("2019-10-15 09:03:21");
select day("2019-10-15 09:03:21");
select last_day ("2019-02-02 09:34:21");
select dayname("2019-02-02 09:34:21");
select dayofmonth("2019-02-02 09:34:21");
select dayofweek("2019-02-02 09:34:21");
select dayofyear("2019-02-02 09:34:21");
select week("2019-02-02 09:34:21");
select weekday("2019-02-02 09:34:21");
select extract(month from "2019-10-05 09:34:21");
select adddate("2019-02-02", Interval 10 day);
select adddate("2019-02-02", Interval 1 month);
select adddate("2019-02-02", Interval 5000 minute);
select makedate(2024,10);
select subdate("2019-10-15", Interval 1 day);
select current_time();
select current_timestamp();
select localtime();
select localtimestamp();
select time ("2019-10-15 09:03:21");
select minute ("2019-10-15 09:03:21");
select hour ("2019-10-15 09:03:21");
select timediff("05:01:23", "09:03:21");

create table employee2(
emp_id int primary key auto_increment,
emp_name varchar(50),
dept_id int,
salary int);

insert into employee2(emp_name,dept_id,salary)
values("Alice",101,6000),
      ("Bob",102,7000),
      ("Charlie",101,7500),
      ("Eve",102,8500);
      
create table departments(
dept_id int,
dept_name varchar(50));

insert into departments(dept_id,dept_name)
values(101,"HR"),
      (102,"SALES"),
      (103,"IT"),
      (104,"MARKETING");
      
CREATE TABLE Projects(
project_id int,
project_name varchar(30),
dept_id int);


insert into Projects(project_id,project_name,dept_id)
values(1,"project A",101),
      (2,"project B",102),
      (3,"project C",103),
      (4,"project D",104);
      
select employee2.emp_name,dept_name from departments inner join employee2 on departments.dept_id=employee2.dept_id; 
#select column from table inner/left/right join on columns;
#1st
select employee2.emp_name,departments.dept_name from departments left join employee2 on departments.dept_id=employee2.dept_id;
#1st

select employee2.emp_name,departments.dept_name from employee2
right join departments on employee2.dept_id=departments.dept_id where departments.dept_name="SALES";
#list project name along with departments
#3rd
select employee2.emp_name as "employee name",departments.dept_name as "department name" from employee2 Inner Join departments on departments.dept_id = employee2.dept_id;
#4th #find the employees who have salary hiher than 7500 and work in project an an it department
select employee2.emp_name,departments.dept_name from employee2 inner join departments on employee2.dept_id = departments.dept_id  where dept_name="IT"and salary>7500;
#5th #find number of employees in each department
select count(emp_id),departments.dept_name as"dept_name"  from employee2 Inner Join departments on employee2.dept_id = departments.dept_id group by dept_name;
#6th 
select sum(salary),departments.dept_name as"dept_name"  from employee2 Inner Join departments on employee2.dept_id = departments.dept_id group by dept_name;
 #7th
 SELECT departments.dept_id, departments.dept_name FROM departments LEFT JOIN employee2 ON departments.dept_id = employee2.dept_id WHERE employee2.dept_id IS NULL;
 #8th
 select employee2.emp_name,projects.project_name from employee2 inner join projects on employee2.dept_id=projects.dept_id;
 #9th
 select employee2.emp_name,projects.project_name from employee2 inner join  departments on departments.dept_id = employee2.dept_id 
 inner join projects on employee2.dept_id=projects.dept_id where departments.dept_name="HR";
 #10th
 select departments.dept_name,count(projects.dept_id) from projects right join departments on projects.dept_id=departments.dept_id 
 group by departments.dept_name having  count(projects.dept_id)=1;
 #10th
  select departments.dept_name,count(projects.dept_id)from projects right join departments on projects.dept_id=departments.dept_id 
  group by departments.dept_name having  count(projects.dept_id)>1;
 #10th
 select projects.project_name from departments left join projects on departments.dept_id=projects.dept_id 
 group by projects.project_name having  count(departments.dept_id)=1;
 #11TH
select departments.dept_name,employee2.emp_id from employee2 left join departments on employee2.dept_id=departments.dept_id
left join projects on departments.dept_id=projects.dept_id 
group by departments.dept_name,employee2.emp_id having  count(projects.dept_id)=1;
 #11th
select departments.dept_name,employee2.emp_id from employee2 left join departments on employee2.dept_id=departments.dept_id
left join projects on departments.dept_id=projects.dept_id 
group by departments.dept_name,employee2.emp_id having  count(projects.dept_id)=0;
#12th
select distinct(departments.dept_name),count(employee2.emp_id),count(projects.project_id) from departments left join employee2 on departments.dept_id=employee2.dept_id
left join projects on departments.dept_id=projects.dept_id 
group by departments.dept_name,employee2.emp_id,projects.project_id; 
#13th
select d.dept_name,count(emp_id),sum(salary)
from departments d
inner join employee2 
on d.dept_id=dept_id
group by dept_name
having count(emp_id)=2;




