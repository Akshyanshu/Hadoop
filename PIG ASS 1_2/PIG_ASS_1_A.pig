emp_d = LOAD 'employee_details.txt' using PigStorage(',') as (emp_id:int, ename:chararray, sal:int, rating:int);
sorted = order emp_d by rating desc, ename;
top    = limit sorted 5;
dump top;