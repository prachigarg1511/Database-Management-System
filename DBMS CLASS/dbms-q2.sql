CREATE DATABASE db;
use db;

create table db.Employee(
	salary int,
    Job varchar(255)
);
select *from db.Employee;
insert into db.Employee values (20000, "Salesman");
insert into db.Employee values (40000, "Ceo");
insert into db.Employee values (5000, "peon");
insert into db.Employee values (10000, "accountant");

select *from db.Employee;

alter table db.Employee add Dept_no varchar(255);

update db.Employee 
set Dept_no = case 	
	when Job = 'Salesman'   THEN '10'     
    when Job = 'Ceo'        THEN '20'     
    when  Job = 'accountant' THEN '30'     
    when Job = 'peon'       THEN '40'     
END;


-- group function 
select max(salary) from db.Employee;
select min(salary) from db.Employee;
select avg(salary) from db.Employee;
select sum(salary) from db.Employee;
select sum(salary) from db.Employee;

SELECT 
    sum(salary) as Total_Salary,
    min(salary) as Minimum_Salary,
    max(salary) as Maximum_Salary,
    avg(salary) as Average_Salary,
    count(salary) as Total_Count
from db.Employee;

select 
    Job,
    sum(salary) as Total_Salary,
    min(salary) as Minimum_Salary,
    max(salary) as Maximum_Salary,
    avg(salary) as Average_Salary,
    count(salary) as Total_Count
from db.Employee
group by Job;

select *from db.Employee;