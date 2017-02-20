-- branch
INSERT INTO branchoffice VALUES('001', '2250 Guy', 'Montreal', 'QC'); 
INSERT INTO branchoffice VALUES('002', '3630 York', 'Toronto', 'ON') ;
INSERT INTO branchoffice VALUES('003', '89 Sherbrooke', 'Vancouver', 'BC') ;
INSERT INTO branchoffice VALUES('004', '321 De La Savane', 'Ottawa', 'ON') ;
INSERT INTO branchoffice VALUES('005', '909 Mountain','Moncton', 'NB') ;

-- employee mechanic

INSERT INTO employee VALUES ('001978', 'Oliver Smith', 60000, '004', '235 Sherbrooke', 'Ottawa', 'ON', '2013-05-15');
INSERT INTO employee VALUES ('098123', 'Harry Rosen', 65000, '001', '765 St. Marc', 'Montreal' , 'QC', '2014-01-21');
INSERT INTO employee VALUES ('000234', 'Steven Smith', 70000, '004', '1055 Boulevard des Laurentides', 'Ottawa', 'ON', '2013-07-22');
INSERT INTO employee VALUES ('092732', 'Jonathan Choi', 72000, '002','777 Blvd. Marcel-Laurin', 'Toronto', 'ON', '2014-06-27');
INSERT INTO employee VALUES ('625981', 'Vicky Ryan', 67000, '003', '1625 Maisonneuve', 'Vancouver', 'BC', '2014-06-27');

-- employee salesman
INSERT INTO employee VALUES ('132198', 'Linda Jenkins', '80000', '001', '232 Saint Antoine', 'Montreal', 'QC', '2012-03-12');
INSERT INTO employee VALUES ('123978', 'John Aniston', '85000', '002', '7452 Buillon Street', 'Toronto', 'ON', '2012-04-13');
INSERT INTO employee VALUES ('124287', 'Jennifer Stinson', '90000', '003', '5520 Cooper Road', 'Vancouver', 'BC', '2012-05-12');
INSERT INTO employee VALUES ('124267', 'Rebecca Friedman', '87000', '004', '276 Titanium Private', 'Ottawa', 'ON', '2012-06-22');
INSERT INTO employee VALUES ('125125', 'Lucas Norton', '80000', '005', '845 Stanley Road', 'Moncton', 'NB', '2012-08-22');

--employee manager
INSERT INTO employee VALUES ('987654', 'Kate Fox', '100000', '001', '4897 Summerfield', 'Montreal', 'QC', '2012-04-12');
INSERT INTO employee VALUES ('334251', 'Henry Kelly', '105000', '002', '4146 Danforth', 'Toronto', 'ON', '2011-09-22');
INSERT INTO employee VALUES ('816273', 'Damon Herrera', '100000', '003', '553 George', 'Vancouver', 'BC', '2010-01-05');
INSERT INTO employee VALUES ('825080', 'Rosa Hawkins', '110000', '004', '3256 MacLaren', 'Ottawa', 'ON', '2009-03-15');
INSERT INTO employee VALUES ('777645', 'Wayne Low', '105000', '005', '1022 Mountain', 'Moncton', 'NB', '2015-04-09');

-- mechanic
INSERT INTO mechanic VALUES('001978');
INSERT INTO mechanic VALUES('098123');
INSERT INTO mechanic VALUES('000234');
INSERT INTO mechanic VALUES('092732');
INSERT INTO mechanic VALUES('625981');

-- salesman
INSERT INTO salesman VALUES('132198',1);
INSERT INTO salesman VALUES('123978',1);
INSERT INTO salesman VALUES('124287',1);
INSERT INTO salesman VALUES('124267',1);
INSERT INTO salesman VALUES('125125',1);

-- manager
INSERT INTO manager VALUES('987654');
INSERT INTO manager VALUES('334251');
INSERT INTO manager VALUES('816273');
INSERT INTO manager VALUES('825080');
INSERT INTO manager VALUES('777645');

--customer
INSERT INTO customer VALUES ('L150717129608', 'Lapointe Anne-Marie', '5143231231', 'lapointer.am@gmail.com', '333 Jean-Lesage', 'Montreal', 'QC', '900000');
INSERT INTO customer VALUES ('T608114069605', 'Ordinson Thor', '5148729123', 'thor.o@gmail.com', '4065 Saint-Denis', 'Montreal', 'QC', '901000');
INSERT INTO customer VALUES ('D610140706609', 'Doe John', '5148294321', 'doe.j@gmail.com', '123 Belle-ville', 'Toronto', 'ON', '902000');
INSERT INTO customer VALUES ('D000011112222', 'McDonald Trump', '4063239999', 'mcdonal.t@gmail.com', '412 King', 'Toronto', 'ON', '903000');
INSERT INTO customer VALUES ('L387074856795', 'Lawson David', '4507849374', 'lawson.d@gmail.com', '600 Hype Park', 'London', 'ON', '904000');

--maintenance
INSERT INTO maintenance VALUES('001978', 'Oil', '2014-11-22');
INSERT INTO maintenance VALUES('098123', 'Break', '2015-02-02');
INSERT INTO maintenance VALUES('000235', 'Left front door', '2015-05-17');
INSERT INTO maintenance VALUES('092732', 'Tire', '2015-05-20');
INSERT INTO maintenance VALUES('625981', 'Oil', '2015-07-12');

--option
INSERT INTO option VALUES('000001', 'Heated Seats', 2000);
INSERT INTO option VALUES('000002', 'Rear Camera', 3500);
INSERT INTO option VALUES('000003', 'Keyless Go', 2750);
INSERT INTO option VALUES('000004', 'Self Parking', 10000);
INSERT INTO option VALUES('000005', 'Tinted Windows', 4000);

-- car
INSERT INTO car VALUES('1HGCM82633A00', 'New', 'G12SA2D' , 23480, 'Corolla', 'Red', 2017, 'Toyota', 'Supreme', 689, 8.2, 'gas', '2-wheel', '001', '333333', '2017-01-01');
INSERT INTO car VALUES('JH23N1B452940', 'Used', 'H239GF4', 10123, 'Accord', 'Blue', 2000, 'Honda', 'Regular', 220780, 12.4, 'gas', '2-wheel', '002', '452637', '2000-11-12');
INSERT INTO car VALUES('JHLRD77874C02', 'Used', 'WBU9727', 70840, 'Mustang', 'Pink', 1998, 'Ford', 'Diesel', 248086, 8.3, 'diesel', '2-wheel', '003', '234567', '1998-07-18');
INSERT INTO car VALUES('1HGSJDH993A00', 'New', '4AG4A15', 91000, 'Civic', 'White', 2005, 'Honda', 'Supreme', 407, 13.9, 'gas', '2-wheel', '004', '452637', '2005-10-09');
INSERT INTO car VALUES('1ASCL12433A00', 'New', 'DS23QA3', 244444, 'i8', 'Black', 2014, 'BWM', 'Supreme', 10, 4.0, 'gas', '4-wheel', '005', '111111', '2014-08-12');

-- contract
INSERT INTO contract VALUES('000200', '2017-10-02', 'Toyota Corolla sold', 23480, '132198', 'L150717129608', '1HGCM82633A00');
INSERT INTO contract VALUES('000201', '2011-01-01', 'Honda Accord sold',10123, '123978', 'T608114069605', 'JH23N1B452940') ;
INSERT INTO contract VALUES('000202', '2017-02-14', 'Ford Mustang sold', 70840, '124287', 'D610140706609', 'JHLRD77874C02') ;
INSERT INTO contract VALUES('000203', '2016-09-27', 'Honda Civic sold', 55000, '124267', 'D000011112222', '1HGSJDH993A00') ;
INSERT INTO contract VALUES('000204', '2017-12-25', 'BMW Black sold', 244444, '125125', 'L387074856795', '1ASCL12433A00') ;

-- transaction
INSERT INTO transaction VALUES('100000', 'Check', '2017-10-02 10:42:01', '556487', 23480, '000200');
INSERT INTO transaction VALUES('100001', 'CASH', '2011-01-01 14:36:15', '091237', 10123, '000201');
INSERT INTO transaction VALUES('100002', 'Check', '2017-02-14 12:09:17', '22211', 70840, '000203');
INSERT INTO transaction VALUES('100003', 'Check', '2016-09-27 16:17:18', '313131', 55000, '000203');
INSERT INTO transaction VALUES('100004', 'Check', '2017-12-25 16:17:18', '343434', 244444, '000204');

-- performs
INSERT INTO performs VALUES( '1HGCM82633A00', '098123', '001978');
INSERT INTO performs VALUES('1HGCM82633A00', '098123', '098123');
INSERT INTO performs VALUES('JH23N1B452940', '092732', '000235');
INSERT INTO performs VALUES('JHLRD77874C02', '625981', '092732');
INSERT INTO performs VALUES('1HGSJDH993A00', '000234', '625981');

-- features
INSERT INTO features VALUES( '1HGCM82633A00', '000001');
INSERT INTO features VALUES( '1HGCM82633A00', '000004');
INSERT INTO features VALUES( 'JH23N1B452940', '000003');
INSERT INTO features VALUES( 'JHLRD77874C02', '000005');
INSERT INTO features VALUES( '1HGSJDH993A00', '000002');

-- print all the statements
SELECT * FROM  branchoffice;
SELECT * FROM  employee;
SELECT * FROM  mechanic;
SELECT * FROM  salesman;
SELECT * FROM  manager;
SELECT * FROM  customer;
SELECT * FROM  carmanufacturer;
SELECT * FROM  car;
SELECT * FROM  option;
SELECT * FROM  contract;
SELECT * FROM  transaction;
SELECT * FROM  maintenance;
SELECT * FROM  performs;
SELECT * FROM  features;
