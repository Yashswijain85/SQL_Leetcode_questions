SELECT Person.firstName,Person.lastName, city, state 
FROM Person 
LEFT JOIN Address ON Person.personId = Address.personId;
