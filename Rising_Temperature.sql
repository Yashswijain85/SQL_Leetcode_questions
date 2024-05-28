-- Approach 1
-- SELECT w1.id
-- FROM
-- Weather AS w1
-- JOIN Weather AS w2
-- ON SUBDATE(w1.recordDate, 1) = w2.recordDate AND w1.temperature > w2.temperature;

-- Approach 2
SELECT w1.id as id
FROM Weather AS w1
JOIN Weather AS w2
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1 and w1.temperature > w2.temperature;
