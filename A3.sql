#Q-1. Write an SQL query to print the FIRST_NAME from Worker table 
#after removing white spaces from the right side.
select rtrim(first_name) from worker;

#Q-2. Write an SQL query that fetches the unique values of DEPARTMENT
#from Worker table and prints its length.
select distinct department,length(department) len from worker;

#Q-3. Write an SQL query to fetch nth max salaries from a table.
with q1 as
(select salary,dense_rank() over(order by salary desc) rank_ from worker)
select * from q1 where rank_=4;