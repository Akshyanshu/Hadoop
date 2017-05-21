emp_d = LOAD 'employee_details.txt' using PigStorage(',') as (emp_id:int, ename:chararray, sal:int, rating:int);
odd_emp = FOREACH emp_d GENERATE emp_id,ename,sal,emp_id%2 as result;
emp_flt = filter odd_emp by result == 1;
sorted = order emp_flt by sal desc, name;
emp_rank = FOREACH sorted GENERATE emp_id,ename,sal;
top3    = limit emp_rank 3;
dump top3;
