import random
from random import randint
from barnum import gen_data
import vin
import datetime
import string

car_manufacturers = {}

name = ["Toyota", "Volkswagen", "Nissan", "BMW", "Mercedes", "Lexus", "Range Rover", "Audi", "Honda", "Chevrolet", "Kia", "Hyundai"]

make_types = {
	'Toyota': ['Yaris', 'Corolla', 'Camry', 'Avalon', 'Sienna'],
	'Volkswagen': ['Amarok', 'Caddy', 'CC', 'Fox', 'Gol G5', 'Golf Mk6'],
	'Nissan': ['Juke', 'Murano', 'Rogue', 'GTR', 'Altima', 'Leaf', 'Frontier'],
	'BMW': ['x5', 'x6', 'x3', 'x1', 'x2', 'm4', 'm3', '320', '428', '325i', '325ii'],
	'Mercedes': ['C-300', 'C-400', 'E-300', 'E-400', 'E-63', 'S-63', 'S-500','ML550', 'CLS'],
	'Lexus': ['GS 300', 'GS 400', 'GS 430', 'GS 450', 'GS 460'],
	'Range Rover': ['HSE', 'Vogue', 'Vogue SE'],
	'Audi': ['A1','A3', 'A4', 'A5', 'A6', 'A7', 'A8', 'Q3', 'Q5', 'Q7', 'SQ5', 'RS7'],
	'Honda': ['Fit', 'Civic', 'HR-V', 'Accord', 'CR-V', 'Pilot', 'Odyssey'],
	'Chevrolet': ['Aveo', 'Bolt', 'Camaro', 'Caprice', 'Cobalt', 'Cruze', 'Corvette'],
	'Kia': ['Forte', 'Sorento', 'Cadenza', 'K900', 'Optima', 'Niro', 'Optima'],
	'Hyundai': ['Elantra', 'Genesis', 'Ioniq', 'Santa Cruz', 'Accent', 'Sonata']
}


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
	temp_businessid = randint(100000, 999999)
	return temp_businessid

def get_radom_manufac_streetaddress():
	return gen_data.create_street()

def get_random_manufac_name():
	return random.choice(name)

def get_random_vin():
	return vin.getRandomVin()

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

def generate_businessids():
	for car_m in name:
		for city in provs:
			car_manufacturers[get_random_manufac_businessid()] = (car_m, get_radom_manufac_streetaddress(), city, provs[city])

businessid = {
	"BMW": 111111,
	"Mercedes": 222222,
	"Toyota": 333333,
	"Honda": 452637,
	"Nissan": 234567
	
}

def generate_random_date():
	temp_date = datetime.date(randint(2005,2017), randint(1,12),randint(1,28))
	return temp_date.year+"-"+temp_date.month+"-"+temp_date.day


def generate_random_license_plate(digits):
	letter_or_number = ['letter', 'number']
	result = ""
	for i in xrange(digits):
		option = random.choice(letter_or_number)
		if (option == 'letter'):
			result += random.choice(string.ascii_letters).upper()
		else:
			result += str(random.randint(0,9))

	return result


generate_businessids()

def generate_cars():
	vin = get_random_vin()
	description = get_random_car_description()
	licenseplate = generate_random_license_plate(7)
	price = get_random_car_price()
	color = get_random_car_color()
	random_date = generate_random_date()
	year = random_date.split('-')[0]
	make = car_manufacturers[random.choice(car_manufacturers.keys())][0]
	model = random.choice(make_types[make])
	fuel = get_random_car_fuel()
	mileage = get_random_car_mileage()
	acceleration = get_random_car_acceleration()
	enginetype = get_random_car_enginetype()
	drivertype = get_random_car_drivertype()
	branchid = get_random_car_branchid()
	businessid = generate_businessids()
	manufacturedsince = random_date
	print vin + " " + description + " " + licenseplate + " " + price + " " + color + " " + random_date + " " + year + " " + make + " " + model + " " + fuel + " " + mileage + " " + acceleration + " " + enginetype + " " + drivertype + " " + branchid + " " + businessid + " " + manufacturedsince   
	
generate_cars()
