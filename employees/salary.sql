-- Запрос для вывода списка сотрудников, у которых заработная плата выше, чем у руководителя
SELECT e.Name AS EmployeeName, e.Salary AS EmployeeSalary, c.Name AS ChiefName, c.Salary AS ChiefSalary
FROM EMPLOYEES e
JOIN EMPLOYEES c ON e.ChiefId = c.EmployeeId
WHERE e.Salary > c.Salary;
