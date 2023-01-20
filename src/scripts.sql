CREATE TABLE employee (
    name VARCHAR,
    department INTEGER,
    salary NUMERIC
);

INSERT INTO employee (name, department, salary) VALUES ('Alex', 1, 10000);
INSERT INTO employee (name, department, salary) VALUES ('Michael', 2, 20500);
INSERT INTO employee (name, department, salary) VALUES ('Anna', 3, 30000);
INSERT INTO employee (name, department, salary) VALUES ('Peter', 1, 12000);
INSERT INTO employee (name, department, salary) VALUES ('Anton', 1, 15000);
INSERT INTO employee (name, department, salary) VALUES ('Steve', 2, 25000);
INSERT INTO employee (name, department, salary) VALUES ('Rafael', 1, 17800);
INSERT INTO employee (name, department, salary) VALUES ('Daniil', 2, 28000);
INSERT INTO employee (name, department, salary) VALUES ('Dana', 1, 11500);
INSERT INTO employee (name, department, salary) VALUES ('Kalvin', 1, 16600);

-- Есть таблица employee с колонками name, department, salary.
-- Вывести максимальную и среднюю зарплату (salary) по каждому отделу,
-- имеющему больше одного сотрудника.
SELECT department, MAX(salary) AS max_salary, AVG(salary) AS average_salary
FROM employee
GROUP BY department HAVING COUNT(name) > 1
ORDER BY department
