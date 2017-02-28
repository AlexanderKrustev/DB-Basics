SELECT TOP (5) e.EmployeeID,e.FirstName,p.Name AS ProjectName FROM Employees AS e
  INNER JOIN EmployeesProjects AS ep
		  ON ep.EmployeeID=e.EmployeeID		  
  INNER JOIN Projects AS p
		  ON p.ProjectID=ep.ProjectID
		  WHERE p.StartDate>'20020813' AND p.EndDate IS NULL
		  ORDER BY e.EmployeeID 
		   

SELECT TOP 5 e.EmployeeID, e.FirstName, p.Name AS "ProjectName" FROM Employees AS e
INNER JOIN EmployeesProjects AS ep
ON e.EmployeeID = ep.EmployeeID
INNER JOIN Projects AS p
ON p.ProjectID = ep.ProjectID
WHERE  p.StartDate > '2002-08-13' AND p.EndDate IS NULL
ORDER BY e.EmployeeID ASC