WITH ranked_employees AS (
    SELECT 
        d.name AS Department,
        e.name AS Employee,
        e.salary,
        DENSE_RANK() OVER (PARTITION BY e.departmentId ORDER BY e.salary DESC) AS salary_rank
    FROM Employee e
    JOIN Department d ON e.departmentId = d.id
)
SELECT Department, Employee, Salary
FROM ranked_employees
WHERE salary_rank <= 3
ORDER BY Department, salary_rank;
