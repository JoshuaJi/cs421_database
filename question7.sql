CREATE VIEW parties(customername, carmodel, carmake, employeename) AS
SELECT cu.name, ca.model, ca.make, e.name
FROM customer cu, car ca, salesman s, contract co, employee e
WHERE cu.driverslicense = co.driverslicense AND ca.vin = co.vin AND co.employeeid = s.employeeid AND s.employeeid = e.employeeid;

CREATE VIEW managers(employeename, branch, position, salary) AS
SELECT e.name, e.branchid,  'manager' as position, e.salary
FROM employee e, manager m
WHERE e.employeeid = m.employeeid ORDER BY salary;
