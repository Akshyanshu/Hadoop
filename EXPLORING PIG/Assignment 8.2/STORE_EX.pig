student_details = LOAD 'student_dtls.txt' USING PigStorage(',')  as (id:int, firstname:chararray, lastname:chararray, age:int, phone:chararray, city:chararray, gpa:int);
First_3 = limit student_details 3;
Store First_3 into '/home/acadgild/pig/per_out' USING PigStorage();