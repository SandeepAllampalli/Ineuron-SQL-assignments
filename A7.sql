#Q-13. Write an SQL query to show only odd rows from a table.
with q1 as
(select *,row_number() over() RN from employee)
select * from q1 where RN%2=0;

#Q-14. Write an SQL query to clone a new table from another table.
create table employee1 like employee;
select * from employee1;
insert into employee1 select * from employee;
