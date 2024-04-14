WITH emp_bonus AS(SELECT e.name as name, b.bonus as bonus
FROM Employee as e
LEFT JOIN Bonus as b 
ON e.empId = b.empId)
SELECT name, bonus 
FROM emp_bonus 
WHERE bonus < 1000 or bonus IS NULL;
