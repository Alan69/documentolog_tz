-- Таблица EMPLOYEES соответствует третьей нормальной форме (3NF)

-- Таблица EMPLOYEES
CREATE TABLE EMPLOYEES (
    EmployeeId INT PRIMARY KEY,
    ChiefId INT,
    Department VARCHAR(255),
    Name VARCHAR(255),
    Salary DECIMAL(10, 2),
    FOREIGN KEY (ChiefId) REFERENCES EMPLOYEES(EmployeeId)
);

-- Вставка данных
INSERT INTO EMPLOYEES (EmployeeId, ChiefId, Department, Name, Salary) VALUES
(1, 1, 'Sales', 'Айгерим', 800),
(2, 1, 'Sales', 'Диляра', 700),
(3, 4, 'Marketing', 'Мариям', 900),
(4, 4, 'Marketing', 'Сабина', 900),
(5, 4, 'Marketing', 'Мадина', 1000),
(6, 8, 'QA', 'Торгын', 300),
(7, 8, 'QA', 'Айжан', 200),
(8, 8, 'QA', 'Дидар', 200);
