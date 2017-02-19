CREATE TABLE branchoffice (
branchid 		VARCHAR(3),
streetaddress 		TEXT NOT NULL, 
city 			TEXT NOT NULL, 
province 		TEXT NOT NULL, 
PRIMARY KEY (branchid)
); 


CREATE TABLE employee (
	employeeid 		VARCHAR(6),
	name  			TEXT NOT NULL,
	salary 			INTEGER NOT NULL,
	branchid 		VARCHAR(3) NOT NULL,
	streetaddress 		TEXT NOT NULL,
	city 			TEXT NOT NULL,
	province 		TEXT NOT NULL,
	employedsince 	DATE NOT NULL,
	PRIMARY KEY (employeeid),
	FOREIGN KEY (branchid) REFERENCES branchoffice(branchid)
);

CREATE TABLE mechanic ( 
employeeid 			VARCHAR(6),
PRIMARY KEY(employeeid),
FOREIGN KEY(employeeid) REFERENCES employee(employeeid) 
);

CREATE TABLE salesman ( 
employeeid	 		VARCHAR(6),
totalsales 			INTEGER NOT NULL CHECK (totalsales > -1),
PRIMARY KEY(employeeid),
FOREIGN KEY(employeeid) REFERENCES employee(employeeid) 
);

CREATE TABLE manager ( 
employeeid 			VARCHAR(6),
PRIMARY KEY(employeeid),
FOREIGN KEY(employeeid) REFERENCES employee(employeeid) 
);

CREATE TABLE customer ( 
driverslicense 			VARCHAR(13),
name 				TEXT NOT NULL,
phonenumber	 		VARCHAR(10) NOT NULL,
email 				TEXT NOT NULL,
streetaddress 			TEXT NOT NULL,
city 				TEXT NOT NULL,
province 			TEXT NOT NULL,
governmentalid 			VARCHAR(13) NOT NULL,
PRIMARY KEY (driverslicense)
);

CREATE TABLE carmanufacturer (
businessid 			VARCHAR(6),
name 				TEXT NOT NULL, 
streetaddress 			TEXT NOT NULL, 
city 				TEXT NOT NULL, 
province 			TEXT NOT NULL,
PRIMARY KEY (businessid)
);

CREATE TABLE car (
vin 				VARCHAR(13), 
description 			TEXT NOT NULL, 
licenseplate 			VARCHAR(7) NOT NULL, 
price 				INTEGER NOT NULL CHECK (price > 0), 
model 				TEXT NOT NULL, 
color 				TEXT NOT NULL, 
year 				INTEGER NOT NULL, 
make 				TEXT NOT NULL, 
fuel 				TEXT NOT NULL, 
mileage 			INTEGER NOT NULL,
acceleration 			FLOAT NOT NULL,
enginetype 			TEXT NOT NULL, 
drivertype 			TEXT NOT NULL, 
branchid 			VARCHAR(3) NOT NULL, 
businessid 			VARCHAR(6) NOT NULL, 
manufacturedsince 		DATE NOT NULL,
PRIMARY KEY (vin),
FOREIGN KEY(branchid) REFERENCES branchoffice(branchid) ,
FOREIGN KEY(businessid) REFERENCES carmanufacturer(businessid) 
); 


CREATE TABLE option (
	optionid 			VARCHAR(6),
	optiontype 			TEXT NOT NULL,
	price 				INTEGER NOT NULL CHECK (price > 0),
	PRIMARY KEY (optionid)
);

CREATE TABLE contract (
contractid 			VARCHAR(6), 
expirydate 			DATE NOT NULL, 
dateofinitiation 		DATE NOT NULL, 
content 			TEXT NOT NULL, 
price 				INTEGER NOT NULL CHECK (price > 0), 
employeeid 			VARCHAR(6) NOT NULL, 
driverslicense 			TEXT NOT NULL, 
vin 				TEXT NOT NULL,
PRIMARY KEY (contractid),
FOREIGN KEY(employeeid) REFERENCES salesman(employeeid) ,
FOREIGN KEY(driverslicense) REFERENCES customer(driverslicense),
FOREIGN KEY(vin) REFERENCES car(vin)  
); 


CREATE TABLE transaction (
	transactionid 				VARCHAR(6),
	paymenttype 				TEXT NOT NULL,
	time 					TIMESTAMP NOT NULL,
	transactiondate 			DATE NOT NULL,
	accountid 				VARCHAR(6) NOT NULL,
	amount 					INTEGER NOT NULL CHECK (amount > 0), 
	contractid 				VARCHAR(6) NOT NULL,
	PRIMARY KEY (transactionid),
	FOREIGN KEY (contractid) REFERENCES contract(contractid)
);

CREATE TABLE maintenance(
maintenanceid 				VARCHAR(6), 
maintenancetype 			TEXT NOT NULL, 
maintenancedate 			DATE NOT NULL,
PRIMARY KEY (maintenanceid)
);

CREATE TABLE performs(
vin 					VARCHAR(13), 
employeeid 				VARCHAR(6), 
maintenanceid 				VARCHAR(6),
PRIMARY KEY (vin, employeeid, maintenanceid),
FOREIGN KEY(vin) REFERENCES car(vin) ,
FOREIGN KEY(employeeid) REFERENCES mechanic(employeeid),
FOREIGN KEY(maintenanceid) REFERENCES maintenance(maintenanceid)
); 

CREATE TABLE features(
vin 					VARCHAR(13), 
optionid 				VARCHAR(6),
PRIMARY KEY (vin, optionid),
FOREIGN KEY(vin) REFERENCES car(vin) ,
FOREIGN KEY(optionid) REFERENCES option(optionid)
);
