use ineuron_sql;
select * from worker;

#Q-1. Write an SQL query to print the first three characters of FIRST_NAME from Worker table.
select substr(first_name,1,3) f3 from worker;

#Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name column
#‘Amitabh’ from Worker table.
select instr(first_name,BINARY'a') from worker where first_name = 'Amitabh';

#Q-3. Write an SQL query to print the name of employees having the highest salary in each department.
select * from worker;
select first_name,last_name,department,salary from worker group by department having max(salary);