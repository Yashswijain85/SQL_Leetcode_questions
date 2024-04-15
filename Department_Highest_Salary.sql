WITH RankedEmployees AS (
    SELECT Department.name as Department, 
           Employee.name as Employee, 
           Employee.salary as Salary,
           DENSE_RANK() OVER (PARTITION BY Department.name ORDER BY Employee.salary DESC) as SalaryRank
    FROM Employee
    JOIN Department ON Employee.departmentId = Department.id
)
SELECT Department, Employee, Salary
FROM RankedEmployees
WHERE SalaryRank = 1;
