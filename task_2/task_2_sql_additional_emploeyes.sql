CREATE TABLE IF NOT EXISTS Employees (
	employee_id SERIAL PRIMARY KEY, 
	name VARCHAR(100) NOT NULL,
	department VARCHAR(100) NOT NULL,
	chief_id INTEGER REFERENCES Employees(employee_id));
	