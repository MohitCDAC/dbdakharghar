create database april;
use april;

use hr02;
show tables;
select * from employees;
select * from departments;
select * from job_history;
###############
#MySQL
use april;
#Q1 CREATION
create table students(
student_ID int primary key not null,
student_name varchar(10) unique key not null,
age int not null);
########

#Q2 INSERTION
insert into students(
student_ID,
student_name,
age) values (
(123, "Bharat", 24),
(456, "Ram", 25),
(789, "Lucky", 26));
############

use hr02;
#Q3
select concat(FIRST_NAME," ",LAST_NAME) as E_NAME from employees e, departments d 
inner join departments on d.DEPARTMENT_ID=e.DEPARTMENT_ID
where e.E_NAME like 'd%';
#########

#Q5
select avg(salary) as avg_sal from employees;
select * from employees e 
inner join departments d on e.department_id=d.department_id 
where salary>(select avg(salary) as avg_sal from employees);
##########

#Q6
select d.location_id, e.job_title, count(*) from employees e
inner join departments d on e.department_id=d.department_id
where HIRE_DATE > (datediff(years(5)));
#########

#Q7
select * from employees 


select * from departments;
######

#Q8
delimiter $$
Create procedure emp_details(in em_id, out emp_name, out dep_name)
begin
select concat(first_name," ", last_name) as e_name, e.employee_id, e.salary, d.department_name
inner join employees e on e.department_id=d.department_id
where employee_id=em_id,
e_name=emp_name,
department_name=dep_name
order by hire_date;
end;
$$
delimiter ;
select emp_details(101, @'Steven King', @'Administration');








######### MongoDB TEST Commands#########
#Q1
# db.dmart.find({borough:"Manhattan"});
######

#Q2
#  db.dmart.find({name:'Cafe Metro'}).sort({qty:1}); 
## in this example,
# i take a name field and the name is 'Cafe Metro' and use sorting in ascending order.
#########

#Q3
# 



