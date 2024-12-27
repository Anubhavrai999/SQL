SELECT * FROM selfjoin.if_else;
use selfjoin;
#q1
select ï»¿Emp_id,name,
if(salary>60000,salary*0.10,salary*0.05)as bonus
from if_else;

#q2
select ï»¿Emp_id,joining_year,
if(joining_year>=2020,"exprienced","newcommer")as catgeory
from if_else;

#q3
select ï»¿Emp_id,department,
if(salary>75000,"high average","average earner")as catgeory
from if_else
where department="IT";

select ï»¿Emp_id,name,
if(department="IT","eligleble for promotion","not elegiable for promotion")as promotion
from if_else;