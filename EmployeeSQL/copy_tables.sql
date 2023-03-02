COPY departments 
from '/Users/michael/class/sql-challenge/EmployeeSQL/data/departments.csv' 
DELIMITER ','
CSV HEADER;

COPY titles 
from '/Users/michael/class/sql-challenge/EmployeeSQL/data/titles.csv' 
DELIMITER ','
CSV HEADER;

COPY employees 
from '/Users/michael/class/sql-challenge/EmployeeSQL/data/employees.csv' 
DELIMITER ','
CSV HEADER;

COPY dep_emp 
from '/Users/michael/class/sql-challenge/EmployeeSQL/data/dept_emp.csv' 
DELIMITER ','
CSV HEADER;

COPY dept_manager 
from '/Users/michael/class/sql-challenge/EmployeeSQL/data/dept_manager.csv' 
DELIMITER ','
CSV HEADER;

COPY salaries
from '/Users/michael/class/sql-challenge/EmployeeSQL/data/salaries.csv' 
DELIMITER ','
CSV HEADER;
