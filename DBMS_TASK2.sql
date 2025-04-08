SQL> CREATE TABLE Departments (DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(100) UNIQUE NOT NULL);

Table created.

SQL> CREATE TABLE Departments (DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(100) NOT NULL);
CREATE TABLE Departments (DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(100) NOT NULL)
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object


SQL> CREATE TABLE Employees (EmployeeID INT PRIMARY KEY, Name VARCHAR(100) NOT NULL, Age INT CHECK (Age >= 18), DepartmentID INT, FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID));
CREATE TABLE Employees (EmployeeID INT PRIMARY KEY, Name VARCHAR(100) NOT NULL, Age INT CHECK (Age >= 18), DepartmentID INT, FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID))
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object


SQL> DROP TABLE Employees;

Table dropped.

SQL> CREATE TABLE Employees (EmployeeID INT PRIMARY KEY, Name VARCHAR(100) NOT NULL, Age INT CHECK (Age >= 18), DepartmentID INT, FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID));

Table created.

SQL> CREATE TABLE Projects (ProjectID INT PRIMARY KEY, ProjectName VARCHAR(100) NOT NULL, Budget DECIMAL(10,2));

Table created.

SQL> CREATE TABLE EmployeeProjects (EmployeeID INT, ProjectID INT, PRIMARY KEY (EmployeeID, ProjectID), FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID), FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID));

Table created.

SQL> INSERT INTO Departments VALUES (1, 'IT');

1 row created.

SQL> INSERT INTO Employees VALUES (101, 'Alice', 25, 1);

1 row created.

SQL> INSERT INTO Projects VALUES (501, 'Website Upgrade', 20000.00);

1 row created.

SQL> INSERT INTO EmployeeProjects VALUES (101, 501);

1 row created.
