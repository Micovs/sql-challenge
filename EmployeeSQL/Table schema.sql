

CREATE TABLE titles (
    "title_id" varchar(10) PRIMARY KEY  NOT NULL,
    "title" varchar(100)   NOT NULL
);

CREATE TABLE salaries (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    PRIMARY KEY ("emp_no")	
);

CREATE TABLE employees (
    "emp_no" int PRIMARY KEY NOT NULL,
    "emp_title_id" varchar(10)   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar(100)   NOT NULL,
    "last_name" varchar(100)   NOT NULL,
    "sex" varchar(10)   NOT NULL,
    "hire_date" date   NOT NULL,
	FOREIGN KEY ("emp_title_id") REFERENCES titles ("title_id"),
	FOREIGN KEY ("emp_no")  REFERENCES salaries ("emp_no")
);

CREATE TABLE departments (
    "dept_no" varchar(10) PRIMARY KEY  NOT NULL,
    "dept_name" varchar(50)   NOT NULL
);

CREATE TABLE dept_emp (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(10)   NOT NULL,
    PRIMARY KEY ("emp_no","dept_no"),
	FOREIGN KEY ("dept_no")  REFERENCES departments ("dept_no"),
    FOREIGN KEY ("emp_no")  REFERENCES employees ("emp_no")	
);

CREATE TABLE dept_manager (
    "dept_no" varchar(10)   NOT NULL,
    "emp_no" int   NOT NULL,
    PRIMARY KEY ("dept_no","emp_no"),
	FOREIGN KEY ("dept_no")  REFERENCES departments ("dept_no"),
    FOREIGN KEY ("emp_no")   REFERENCES employees ("emp_no")
);

SELECT * FROM titles;
SELECT * FROM salaries;
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;