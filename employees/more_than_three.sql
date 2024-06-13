-- Запрос для вывода списка названий отделов, где количество сотрудников не превышает 3-х человек
SELECT Department
FROM EMPLOYEES
GROUP BY Department
HAVING COUNT(*) <= 3;
