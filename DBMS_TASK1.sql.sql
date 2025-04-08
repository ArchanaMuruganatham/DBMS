
SQL> CREATE TABLE Employees (
  2      EmployeeID INT PRIMARY KEY,
  3      FirstName VARCHAR(50) NOT NULL,
  4      LastName VARCHAR(50) NOT NULL,
  5      Email VARCHAR(100) UNIQUE NOT NULL,
  6      Age INT CHECK (Age >= 18)
  7  );

Table created.

SQL> INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Age)
  2  VALUES (1, 'Alice', 'Smith', 'alice.smith@example.com', 28);

1 row created.

SQL>
SQL> INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, Age)
  2  VALUES (2, 'Bob', 'Johnson', 'bob.johnson@example.com', 35);

1 row created.

SQL> UPDATE Employees
  2  SET Age = 36
  3  WHERE EmployeeID = 2;

1 row updated.

SQL> DELETE FROM Employees
  2  WHERE EmployeeID = 1;

1 row deleted.

SQL>


