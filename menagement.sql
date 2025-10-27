create database menagement;
create database if not exists menagement;
use menagement;
create table employy
( imp_id int primary key,
emp_name varchar (50),
age int not null,
department varchar (50),
salary int default 2500);
insert into employy
values
('101', "ali", '35', "finance", "70000"),
('102', "alina", '28', "Exam", "6000"),
('103', "aliRaza", '16', "finance", "4000"),
('104', "aliZaib", '31', "management", "5000"),
('105', "alisha", '34', "computer", "23000"),
('106', "asma", '32', "management", "12000"),
('107', "amna", '27', "finance", "56000"),
('108', "jia", '23', "management", "80000"),
('109', "zai", '25', "Exam", "34000"),
('10', "zaraali", '29', "admission", "15500"),
('11', "zahora", '28', "finance", "16700"),
('12', "zaheer", '27', "acadmic", "72000"),
('13', "khalid", '26', "acadmic", "68000"),
('14', "muntaha", '25', "computer", "56000"),
('15', "zainab", '24', "finance", "72000");
select * from employy;
select emp_name, salary from empolye;
select age from employe where age<30;
select department from employe where department="computer";
select salary from employe where salary<5000 order by salary DESC;
SELECT  min(age) from employy;
select count(employee) from employee;
select emp_name from employee where emp_name='a';
select emp_name from employee where emp_name='al';
select distinct department  from employee;
update salary 
set salary='6000'
where emp_name="ali";
delete from  employe where emp_id='105';
alter table employe
add join_date date; 
select salary from employe where  max(salary);
select salary from employe where 40000<salary<80000;
update emp_name
set emp_name="employee_name"
where emp_name="emp_name";

use menagement;
create table department
(dep_id int ,
 foreign key (imp_id)references employy (imp_id),
dept_name varchar(50),
location varchar(50) );
insert into department 
values 
(1, "computer", "okara"),
(2, "Exam", "lahore"),
(3, "acdemic", "sahiwal"),
(4, "finance", "Multan"),
(5, "acdemic", "karachi");
select * from deparment;

use management;
create table student(
std_id int primary key,
std_name varchar(50),
std_marks int not null,
std_age int not null,
 foreign key (dep_id)references department (dep_id),
class char not null);
insert into student values 
(1, "ali", '80', '18' "BSSE"),
(2, "Asma", '40', '20', "BSSE"),
(3, "JIA", '60', '23', "BSSE"),
(4, "ahmed", '73', '16',"BSSE"),
(5, "hadia", '85', '19', "BSSE");
select * from student ;

use menagement;
create table tech(
techName varchar(50),
age int not null,
place varchar(50),
line int default 3);
insert into  tech values
("ali", '34', "okara" ),
("alina", '34', "okara", 1),
("alizy", '39',"okara", 1),
("aliraza", '38', "okara", 1),
("aliNawaz", '37', "okara", 1),
("ahmed", '36', "okara", 1);
select * from tech;

select * from employy as a
left join department as b
on a.emp_id = b.dep.id
where b.dep_id is null;

select * from student as s
right join tech as t
on s.std_id= t.techName;

select * from department as d
inner join student as s
on s.std_nmae = dept_name;

select * from department as d
join student as s
on d.id= s.name;
