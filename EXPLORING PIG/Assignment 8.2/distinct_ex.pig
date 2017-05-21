student_details = LOAD 'student_dtls.txt' USING PigStorage(',')  as (id:int, firstname:chararray, lastname:chararray, age:int, phone:chararray, city:chararray, gpa:int);
extract_age = foreach student_details generate (age);
distinct_age = DISTINCT extract_age;
Dump distinct_age;