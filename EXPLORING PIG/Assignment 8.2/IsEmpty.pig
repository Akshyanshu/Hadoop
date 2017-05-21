emp_sales = LOAD  'emp_sales.txt' USING PigStorage(',')
   as (sno:int, name:chararray, age:int, salary:int, dept:chararray);
	
 emp_bonus = LOAD 'emp_bonus.txt' USING PigStorage(',')
   as (sno:int, name:chararray, age:int, salary:int, dept:chararray);
cogroup_data = COGROUP emp_sales by age, emp_bonus by age;
isempty_data = filter cogroup_data by IsEmpty(emp_sales);
dump isempty_data;