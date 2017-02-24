import random
from random import randint
from barnum import gen_data
import vin
import datetime
import string

car_manufacturers = {}
car_manufacturers_sql = []
make_businessids = {}

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
	return vin.getRandomVin()[:13]

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
			ran_businessid = get_random_manufac_businessid()
			ran_street_address = get_radom_manufac_streetaddress()
			if car_m in make_businessids:
				make_businessids[car_m].append(ran_businessid)
			else:
				make_businessids[car_m] = [ran_businessid]				
			car_manufacturers[ran_businessid] = (car_m, ran_street_address, city, provs[city])
			car_manufacturers_sql.append('INSERT INTO carmanufacturer  VALUES (\'{}\', \'{}\', \'{}\', \'{}\', \'{}\');'.format(ran_businessid, car_m, ran_street_address, city, provs[city]))

businessid = {
	"BMW": 111111,
	"Mercedes": 222222,
	"Toyota": 333333,
	"Honda": 452637,
	"Nissan": 234567
	
}

def generate_random_date():
	temp_date = datetime.date(randint(2005,2017), randint(1,12),randint(1,28))
	return str(temp_date.year)+"-"+str(temp_date.month)+"-"+str(temp_date.day)


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

with open('question9_carmanufacturers.sql', 'w') as f:
	for item in car_manufacturers_sql:
		f.write(item+'\n')
print "{} car manufacturers generated".format(len(car_manufacturers_sql))

def generate_cars():
	temp_cars = []
	for i in xrange(200):
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
		businessid = random.choice(make_businessids[make])
		manufacturedsince = random_date
		#print vin + " " + description + " " + licenseplate + " " + str(price) + " " + color + " " + random_date + " " + str(year) + " " + make + " " + model + " " + fuel + " " + str(mileage) + " " + str(acceleration) + " " + enginetype + " " + drivertype + " " + str(branchid) + " " + str(businessid) + " " + manufacturedsince   
		temp_cars.append('INSERT INTO car VALUES(\'{}\', \'{}\',\'{}\', {}, \'{}\', \'{}\', {}, \'{}\', \'{}\', {}, {}, \'{}\', \'{}\', \'{}\', \'{}\', \'{}\');'.format(vin, description, licenseplate, price, model, color, year, make, fuel, mileage, acceleration, enginetype, drivertype, branchid, businessid, manufacturedsince))
	with open('question9_cars.sql', 'w') as f:
		for item in temp_cars:
			f.write(item+'\n')
	print "{} cars generated".format(len(temp_cars))

generate_cars()
	
