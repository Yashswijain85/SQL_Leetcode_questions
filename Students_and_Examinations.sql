-- A cross join is a type of join that returns the Cartesian product of rows from the tables in the join. In other words, it combines each row from the first table with each row from the second table.

SELECT Students.student_id, Students.student_name, Subjects.subject_name, COUNT(Examinations.subject_name) as attended_exams
FROM Students 
CROSS JOIN Subjects 
LEFT JOIN Examinations 
ON Students.student_id = Examinations.student_id AND Subjects.subject_name = Examinations.subject_name
GROUP BY Students.student_id, Students.student_name, Subjects.subject_name
ORDER BY Students.student_id, Subjects.subject_name

