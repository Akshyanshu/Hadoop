emp_d = LOAD 'employee_details.txt' using PigStorage(',') as (emp_id:int, ename:chararray, sal:int, rating:int);
emp_e = LOAD 'employee_expenses.txt' using PigStorage() as (eid:int, exp:int);
join_emp = join emp_d by emp_id LEFT OUTER, emp_e by eid;
emp = FOREACH join_emp GENERATE emp_id, ename,eid;
flt_emp = FILTER emp by eid is null;
dump;