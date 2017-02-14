CREATE TABLE branchoffice (
branchid 		INTEGER,
streetaddress 		TEXT NOT NULL, 
city 			TEXT NOT NULL, 
province 		TEXT NOT NULL, 
PRIMARY KEY (branchid)
); 


CREATE TABLE employee (
	employeeid 		INTEGER,
	name  			TEXT NOT NULL,
	salary 			INTEGER NOT NULL,
	branchid 		INTEGER NOT NULL,
	streetaddress 		TEXT NOT NULL,
	city 			TEXT NOT NULL,
	province 		TEXT NOT NULL,
	employedsince 	DATE NOT NULL,
	PRIMARY KEY (employeeid),
	FOREIGN KEY (branchid) REFERENCES branchoffice(branchid)
);

CREATE TABLE mechanic ( 
employeeid 			INTEGER,
PRIMARY KEY(employeeid),
FOREIGN KEY(employeeid) REFERENCES employee(employeeid) 
);

CREATE TABLE salesman ( 
employeeid	 		INTEGER,
totalsales 			INTEGER NOT NULL CHECK (totalsales > -1),
PRIMARY KEY(employeeid),
FOREIGN KEY(employeeid) REFERENCES employee(employeeid) 
);

CREATE TABLE manager ( 
employeeid 			INTEGER,
PRIMARY KEY(employeeid),
FOREIGN KEY(employeeid) REFERENCES employee(employeeid) 
);

CREATE TABLE customer ( 
driverslicense 			VARCHAR(13),
name 				TEXT NOT NULL,
phonenumber	 		INTEGER NOT NULL,
email 				TEXT NOT NULL,
streetaddress 			TEXT NOT NULL,
city 				TEXT NOT NULL,
province 			TEXT NOT NULL,
governmentalid 		INTEGER NOT NULL,
PRIMARY KEY (driverslicense)
);

CREATE TABLE carmanufacturer (
businessid 			INTEGER,
name 				TEXT NOT NULL, 
streetaddress 			TEXT NOT NULL, 
city 				TEXT NOT NULL, 
province 			TEXT NOT NULL,
PRIMARY KEY (businessid)
);

CREATE TABLE car (
vin 				TEXT, 
description 			TEXT NOT NULL, 
licenseplate 			TEXT NOT NULL, 
price 				INTEGER NOT NULL CHECK (price > 0), 
model 				TEXT NOT NULL, 
color 				TEXT NOT NULL, 
year 				DATE NOT NULL, 
make 				TEXT NOT NULL, 
fuel 				TEXT NOT NULL, 
mileage 			INTEGER NOT NULL,
acceleration 			FLOAT NOT NULL,
enginetype 			TEXT NOT NULL, 
drivertype 			TEXT NOT NULL, 
branchid 			INTEGER NOT NULL, 
businessid 			INTEGER NOT NULL, 
manufacturedsince 		DATE NOT NULL,
PRIMARY KEY (vin),
FOREIGN KEY(branchid) REFERENCES branchoffice(branchid) ,
FOREIGN KEY(businessid) REFERENCES carmanufacturer(businessid) 
); 


CREATE TABLE option (
	optionid 			INTEGER,
	optiontype 			TEXT NOT NULL,
	price 				INTEGER NOT NULL CHECK (price > 0),
	PRIMARY KEY (optionid)
);

CREATE TABLE contract (
contractid 			INTEGER, 
expirydate 			DATE NOT NULL, 
dateofinitiation 		DATE NOT NULL, 
content 			TEXT NOT NULL, 
price 				INTEGER NOT NULL CHECK (price > 0), 
employeeid 			INTEGER NOT NULL, 
driverslicense 			TEXT NOT NULL, 
vin 				TEXT NOT NULL,
PRIMARY KEY (contractid),
FOREIGN KEY(employeeid) REFERENCES salesman(employeeid) ,
FOREIGN KEY(driverslicense) REFERENCES customer(driverslicense),
FOREIGN KEY(vin) REFERENCES car(vin)  
); 


CREATE TABLE transaction (
	transactionid 				INTEGER,
	paymenttype 				TEXT NOT NULL,
	time 					TIMESTAMP NOT NULL,
	transactiondate 			DATE NOT NULL,
	accountid 				INTEGER NOT NULL,
	amount 				INTEGER NOT NULL CHECK (amount > 0), 
	contractid 				INTEGER NOT NULL,
	PRIMARY KEY (transactionid),
	FOREIGN KEY (contractid) REFERENCES contract(contractid)
);

CREATE TABLE maintenance(
maintenanceid 			INTEGER, 
maintenancetype 			TEXT NOT NULL, 
maintenancedate 			DATE NOT NULL,
PRIMARY KEY (maintenanceid)
);



CREATE TABLE performs(
vin 					TEXT, 
employeeid 				INTEGER, 
maintenanceid 			INTEGER,
PRIMARY KEY (vin, employeeid, maintenanceid),
FOREIGN KEY(vin) REFERENCES car(vin) ,
FOREIGN KEY(employeeid) REFERENCES mechanic(employeeid),
FOREIGN KEY(maintenanceid) REFERENCES maintenance(maintenanceid)
); 

CREATE TABLE features(
vin 					TEXT, 
optionid 				INTEGER,
PRIMARY KEY (vin, optionid),
FOREIGN KEY(vin) REFERENCES car(vin) ,
FOREIGN KEY(optionid) REFERENCES option(optionid)
);