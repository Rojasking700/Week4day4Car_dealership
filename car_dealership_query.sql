CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	phone VARCHAR(15)
);

SELECT *
FROM customer;

CREATE TABLE sales_person(
	sales_person_id SERIAL PRIMARY KEY,
	first_name VARCHAR(25),
	last_name VARCHAR(25)
);


SELECT *
FROM sales_person;

CREATE TABLE parts(
	part_id SERIAL PRIMARY KEY,
	part_name VARCHAR(25),
	price NUMERIC(8,2)
)


SELECT *
FROM parts;

CREATE TABLE mechanic(
	mech_staff_id SERIAL PRIMARY KEY,
	first_name VARCHAR(25),
	last_name VARCHAR(25)
); 

SELECT *
FROM mechanic

CREATE TABLE vehicle(
	serial_num SERIAL PRIMARY KEY,
	make VARCHAR(25),
	model VARCHAR(25),
	price NUMERIC(10,2),
	vehicle_year INT,
	used BOOLEAN,
	sold BOOLEAN
);

SELECT *
FROM vehicle;

CREATE TABLE sales (
	sale_id SERIAL PRIMARY KEY,
	amount NUMERIC(10,2),
	customer_id INTEGER, -- FKey
	serial_num INT --Fkey
);

ALTER TABLE SALES
ADD COLUMN amount NUMERIC(10,2)

ALTER TABLE sales
ADD FOREIGN KEY(customer_id) REFERENCES customer(customer_id);

ALTER TABLE sales
ADD FOREIGN KEY(serial_num) REFERENCES vehicle(serial_num);


SELECT *
FROM sales;

CREATE TABLE service (
	service_id SERIAL PRIMARY KEY,
	amount NUMERIC(5,2),
	task VARCHAR(25),
	part_id INTEGER --Fkey
);
ALTER TABLE service 
ADD FOREIGN KEY(part_id) REFERENCES parts(part_id);

SELECT *
FROM service

CREATE TABLE mechanic_service(
	mech_services_id SERIAL PRIMARY KEY,
	mech_staff_id INTEGER, --Fkey
	service_id INTEGER --FKey
);
ALTER TABLE mechanic_service
ADD FOREIGN KEY(mech_staff_id) REFERENCES mechanic(mech_staff_id);
ALTER TABLE mechanic_service
ADD FOREIGN KEY(service_id) REFERENCES service(service_id);

SELECT *
FROM mechanic_service;

CREATE TABLE invoice(
	invoice_id SERIAL PRIMARY KEY,
	sales_person_id INTEGER, --FKey
	sale_id INTEGER, --FKey
	customer_id INTEGER, --FKey
	service_id INTEGER,--FKey 
	invoice_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
ALTER TABLE invoice
ADD FOREIGN KEY(sales_person_id) REFERENCES sales_person(sales_person_id);
ALTER TABLE invoice
ADD FOREIGN KEY(sale_id) REFERENCES sales(sale_id);
ALTER TABLE invoice
ADD FOREIGN KEY(customer_id) REFERENCES customer(customer_id);      -- this was a perfect time to use a function /procedure 
ALTER TABLE invoice													-- but by the time i realized it was to late
ADD FOREIGN KEY(service_id) REFERENCES service(service_id);

SELECT *
FROM invoice;