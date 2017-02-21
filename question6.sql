UPDATE employee
SET salary = salary + 10000
WHERE salary < 100000;

DELETE FROM transaction WHERE date_part('year', time) < 2017;

INSERT INTO features VALUES('1ASCL12433A00', (SELECT optionid FROM features WHERE vin = 'JH23N1B452940'));

UPDATE car
SET mileage = mileage + 1000
WHERE mileage IN (SELECT mileage FROM car WHERE mileage<700);
