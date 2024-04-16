WITH Email AS(SELECT Person.email as email, COUNT(email) AS email_count
FROM Person 
GROUP BY email)
SELECT email FROM Email
WHERE email_count>1;
