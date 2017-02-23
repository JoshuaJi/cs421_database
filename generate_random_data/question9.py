import random
from random import randint
from barnum import gen_data
import vin

name = ["Toyota", "Volkswagen", "Nissan", "BMW", "Mercedes", "Lexus", "Range Rover", "Audi", "Honda", "Chevrolet", "Kia", "Hyundai"]
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
def get_random_manufac_city():
	city = random.choice(provs.keys())
	return (city, provs[city])
def get_random_manufac_businessid():
	int temp_businessid = randint(100000, 999999)
	businessid.append(temp_businessid)
	return temp_businessid
def get_radom_manufac_streetaddress():
	return gen_data.create_street()
def get_random_carmanufac_name():
	return random.choice(name)
def get_random_vin():
	return vin.getRandomVin()
vin = []
description = ["New", "Used"]
def get_random_car_description():
	return random.choice(description)
licenseplate = []
def get_random_car_price():
	return randint(10000, 120000)
model = []
color = ["Red", "Blue", "Green", "Yellow", "Gray", "White", "Black", "Pink", "Orange"]
def get_random_car_color():
	return random.choice(color)
def get_random_car_year():
	return randint(2005, 2017)
make = []
fuel = ["Supreme", "Regular", "Diesel"]
def get_random_car_fuel():
	return random.choice(fuel)
def get_random_car_mileage():
	return randint(0, 200000)
def get_random_car_acceleration():
	return randint(3, 15)
enginetype = ["gas", "diesel"]
def get_random_car_enginetype():
	return random.choice(enginetype)
drivertype = ["2-wheel", "4-wheel"]
def get_random_car_drivertype():
	return random.choice(drivertype)
branchid = ["001", "002", "003", "004", "005"]
def get_random_car_branchid():
	return random.choice(branchid)
businessid = []
manufacturedsince = []
