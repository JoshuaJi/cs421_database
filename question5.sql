SELECT AVG(salary)
FROM employee
WHERE city='Montreal';

SELECT enginetype, COUNT(*)
FROM car
GROUP BY car.enginetype;

SELECT cu.name
FROM customer cu, car ca, contract co, salesman s, employee e
WHERE cu.driverslicense = co.driverslicense AND ca.vin = co.vin AND co.employeeid = s.employeeid AND s.employeeid = e.employeeid AND ca.model = 'Corolla' AND ca.year = 2017 AND e.name = 'Linda Jenkins';

SELECT c.model, c.make
FROM features f, car c
WHERE f.vin = c.vin 
AND optionid = (SELECT optionid FROM option WHERE optiontype = 'Self Parking');

SELECT name,dateofinitiation FROM 
employee 
JOIN
salesman
JOIN
contract
ON salesman.employeeid = contract.employeeid
ON employee.employeeid = salesman.employeeid
ORDER BY dateofinitiation LIMIT 1;
