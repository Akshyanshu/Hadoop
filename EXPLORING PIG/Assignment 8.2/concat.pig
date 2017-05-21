student_details = LOAD 'student_dtls.txt' USING PigStorage(',')  as (id:int, firstname:chararray, lastname:chararray, age:int, phone:chararray, city:chararray, gpa:int);
name_con = foreach student_details generate CONCAT(firstname, lastname);
Dump name_con;
