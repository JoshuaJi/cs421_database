import random

businessid = []
name = ["Toyota", "Volkswagen", "Nissan", "BMW", "Mercedes", "Lexus", "Range Rover", "Audi", "Honda", "Chevrolet", "Kia", "Hyundai"]
streetaddress = []

provs = {
	"Montreal": "QC",
	"Toronto": "ON",
	"Vancouver": "BC",
	"Ottawa": "ON",
	"Moncton": "NB",
	"Edmonton": "AB",
	"Victoria": "BC",
	"Orleans": "ON",
	"London": "ON",
	"Halifax": "NS",
	"St. John's": "NL", 
	"Markham": "ON", 
	"Richmond Hill": "ON"
}

def get_random_city():
	city = random.choice(provs.keys())
	return (city, provs[city])


vin = []
description = []
licenseplate = []
price = []
model = []
color []
year = []
make = []
fuel = []
mileage = []
acceleration = []
enginetype = []
drivertype = []
branchid = ["001", "002", "003", "004", "005"]
businessid = []
manufacturedsince = []
