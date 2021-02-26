SELECT *
FROM customer;

INSERT INTO customer(first_name,last_name,phone)
VALUES('Bob', 'TheBuilder', '(909) 234-2368'),
	('SpongeBob','SquarePants', '(253) 583-8934'),
	('James','Carter','(832) 183-4752'),
	('Brian', 'OConor', '(475) 347-6892'),
	('Dominic', 'Torretto', '(342) 304-9785')

SELECT *
FROM mechanic;

INSERT INTO mechanic(first_name,last_name)
VALUES('Gerale','Mitchel'),
	('Adam', 'Bradly'),
	('Gabriel', 'Garza'),
	('Gabriel', 'Rojas')
	
SELECT *
FROM sales_person;

INSERT INTO sales_person(first_name,last_name)
VALUES('Israel','Perez'),
	('Rick','Keifer'),
	('Jose','Delgado')
	
SELECT *
FROM parts;

INSERT INTO parts(part_name,price)
VALUES('Ebay turbo', 200),
	('Brembo brakes', 900),
	('Coilovers', 700),
	('Headlights', 250),
	('Cold air intake', 175),
	('Titanuim exauhst', 600),
	('Inter cooler', 300),
	('Limited silp differntial', 600),
	('LS1 engine', 1500),
	('2JZ engine', 2500),
	('BBS rims', 1200)
	
SELECT *
FROM vehicle;

INSERT INTO vehicle(make,model,price,vehicle_year,used,sold)
VALUES('Volkswagen', 'Jetta',10000,2013,TRUE,TRUE),
	('Jeep','Wrangler',2000,2002,TRUE,FALSE),
	('Mazda','Miata', 3500, 1990,TRUE,FALSE),
	('Toyta','GT86', 27000,2020,FALSE,FALSE),
	('Toyota','Supra GTE',1500000, 1999,TRUE,TRUE)
	
	
SELECT * 
FROM sales;

INSERT INTO sales(amount,customer_id,serial_num)
VALUES(1000, 2,1),
	(150000,4,4);
	
SELECT *
FROM service;

INSERT INTO service(amount,task,part_id)
VALUES(500,'Turbo install', 1),
	(900, 'LS swap',9),
	(400,'lowered',3)
	
SELECT *
FROM mechanic_service;

INSERT INTO mechanic_service(mech_staff_id,service_id)
VALUES (1,3),
		(2,2),
		(4,2),
		(3,1);
		
SELECT *
FROM invoice;

INSERT INTO invoice(sales_person_id,sale_id,customer_id,service_id)
VALUES(2,2,4,null),
	(3,1,2,null),
	(2,null,3,1),
	(3,null,1,2),
	(1,null,5,3)