CREATE TABLE IF NOT EXISTS employee(
	employee_id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	department VARCHAR(90) NOT NULL,
	director INTEGER NULL REFERENCES employee(employee_id)
);
