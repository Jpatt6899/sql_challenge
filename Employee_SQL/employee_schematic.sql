CREATE TABLE Department (
    
	dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
	Primary Key (dept_no)
    );

CREATE TABLE Department_Employee (
    emp_no INTEGER   NOT NULL,
    dept_no VARCHAR   NOT NULL,
    CONSTRAINT pk_Department_Employee PRIMARY KEY (
        emp_no,dept_no
     )
);

CREATE TABLE Department_Manager (
    dept_no VARCHAR   NOT NULL,
    emp_no INTEGER   NOT NULL,
    CONSTRAINT pk_Department_Manager PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Employee (
    emp_no INTEGER   NOT NULL,
    emp_title_id VARCHAR  NOT NULL,
    birth_date VARCHAR   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date VARCHAR   NOT NULL,
    CONSTRAINT pk_Employee PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Salary (
    emp_no INTEGER  NOT NULL,
    salary INTEGER   NOT NULL,
    CONSTRAINT pk_Slarary PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE Titles (
   
	title_id VARCHAR   NOT NULL,
    title VARCHAR   NOT NULL,
	Primary Key (title_id)
    
);

ALTER TABLE Department_Employee ADD CONSTRAINT fk_Department_Employee_dept_no FOREIGN KEY(dept_no)
REFERENCES Department (dept_no);

ALTER TABLE Department_Manager ADD CONSTRAINT fk_Department_Manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Department (dept_no);

ALTER TABLE Employee ADD CONSTRAINT fk_Employee_emp_no FOREIGN KEY(emp_no)
REFERENCES Slarary (emp_no);

ALTER TABLE Employee ADD CONSTRAINT fk_Employee_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES Titles (title_id);

ALTER TABLE Slarary ADD CONSTRAINT fk_Slarary_emp_no FOREIGN KEY(emp_no)
REFERENCES Department_Employee (emp_no);




