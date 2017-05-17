mp_d = LOAD 'employee_details.txt' using PigStorage(',') as (emp_id:int, ename:chararray, sal:int, rating:int);
emp_e = LOAD 'employee_expenses.txt' using PigStorage() as (eid:int, exp:int);
join_emp = join emp_d by emp_id, emp_e by eid;
emp = FOREACH join_emp GENERATE emp_id, ename, exp;
sorted = order emp by exp desc, ename;
top3    = limit sorted 3;
Dump;
