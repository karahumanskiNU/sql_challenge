CREATE TABLE Titles (
    Title_id VARCHAR(5)   NOT NULL,
    Title VARCHAR(20)   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (Title_id)
);

CREATE TABLE Departments (
    Dept_no VARCHAR(4)   NOT NULL,
    Department VARCHAR(20)   NOT NULL,
    CONSTRAINT pk_Departments PRIMARY KEY (Dept_no)
);

CREATE TABLE Employees (
    Emp_no int   NOT NULL,
    emp_title VARCHAR(5)   NOT NULL,
    birth_date VARCHAR(10)   NOT NULL,
    first_name VARCHAR(20)   NOT NULL,
    last_name VARCHAR(20)   NOT NULL,
    sex VARCHAR(1)   NOT NULL,
    hire_date date   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (Emp_no),
    FOREIGN KEY (emp_title) REFERENCES Titles(Title_id) 
);

CREATE TABLE Salaries (
    Emp_no int   NOT NULL,
    salary int   NOT NULL,
	CONSTRAINT ck_salaries PRIMARY KEY(Emp_no, salary),
	FOREIGN KEY (Emp_no)REFERENCES Employees(Emp_no)
);

CREATE TABLE Dept_emp (
    Emp_no int   NOT NULL,
    Dept_no VARCHAR(4)   NOT NULL,
	CONSTRAINT ck_dept_emp PRIMARY KEY (Emp_no, Dept_no),
    FOREIGN KEY (Emp_no) REFERENCES Employees(Emp_no),
    FOREIGN KEY (Dept_no) REFERENCES Departments(Dept_no)
);

CREATE TABLE Dept_Manager (
    Dept_no VARCHAR(4)   NOT NULL,
    Emp_no int   NOT NULL,
	CONSTRAINT ck_dept_manager PRIMARY KEY (Dept_no, Emp_no),
    FOREIGN KEY (Dept_no) REFERENCES Departments(Dept_no),
    FOREIGN KEY (Emp_no) REFERENCES Employees(Emp_no)
);

