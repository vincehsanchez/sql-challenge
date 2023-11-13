-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/hPybPR
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

--why? ERROR:  there is no unique constraint matching given keys for referenced table "Employees" 
	--maybe make one without QDB template?
	--non-QDB layout working smoother...
--NOTE: ORDER MATTERS, you may run all the tables at once OR in sequential order.
--NOTE: DATA INPUT REQUIRES CORRECT ORDER, PLEASE UPLOAD DATA BY ORDER OF TABLE CREATION.
CREATE TABLE Departments (
    Department_Number VARCHAR   NOT NULL PRIMARY KEY,
    Department_Name VARCHAR   NOT NULL
    --CONSTRAINT "pk_Departments" PRIMARY KEY
        --"Department_Number"
);

CREATE TABLE Titles (
    Title_ID VARCHAR   NOT NULL PRIMARY KEY,
    Title_Name VARCHAR   NOT NULL
    --CONSTRAINT "pk_Titles" PRIMARY KEY
        --"Title_ID" 
);

CREATE TABLE Employees (
    Employee_Number INT   NOT NULL PRIMARY KEY,
   Employee_Title_ID VARCHAR   NOT NULL,
    Birthdate DATE   NOT NULL,
    First_Name VARCHAR(30)   NOT NULL,
    Last_Name VARCHAR(30)   NOT NULL,
    Sex VARCHAR   NOT NULL,
    Hire_Date DATE   NOT NULL,
	foreign key (Employee_Title_ID) references Titles(Title_ID)
    --CONSTRAINT "pk_Employees" PRIMARY KEY
        --"Employee_Number"
);

CREATE TABLE Department_Employees (
    Employee_Number INT   NOT NULL,
    Department_Number VARCHAR   NOT NULL,
	foreign key (Employee_Number) references Employees(Employee_Number),
	foreign key (Department_Number) references Departments(Department_Number)
);

CREATE TABLE Department_Manager (
    Department_Number VARCHAR   NOT NULL,
    Employee_Number INT   NOT NULL,
	foreign key (Department_Number) references Departments(Department_Number),
	foreign key (Employee_Number) references Employees(Employee_Number)
);

CREATE TABLE Salaries (
    Employee_Number INT   NOT NULL,
    Salary INT   NOT NULL,
	foreign key (Employee_Number) references Employees(Employee_Number)
	--ERROR:  column "employee_numbers" referenced in foreign key constraint does not exist
			--ahh typo, works now.
);

--why do apostrophes matter?

--ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_Department_Number" FOREIGN KEY("Department_Number")
--REFERENCES "Departments" ("Department_Number");

--ALTER TABLE "Department_Manager" ADD CONSTRAINT "fk_Department_Manager_Employee_Number" FOREIGN KEY("Employee_Number")
--REFERENCES "Employees" ("Employee_Number");

--ALTER TABLE "Department_Employees" ADD CONSTRAINT "fk_Department_Employees_Employee_Number" FOREIGN KEY("Employee_Number")
--REFERENCES "Employees" ("Employee_Number");

--ALTER TABLE "Department_Employees" ADD CONSTRAINT "fk_Department_Employees_Department_Number" FOREIGN KEY("Department_Number")
--REFERENCES "Departments" ("Department_Number");

--ALTER TABLE "Titles" ADD CONSTRAINT "fk_Titles_Title_ID" FOREIGN KEY("Title_ID")
--REFERENCES "Employees" ("Employee_Title_ID");

--ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_Employee_Number" FOREIGN KEY("Employee_Number")
--REFERENCES "Employees" ("Employee_Number");

