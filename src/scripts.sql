-- Есть таблица employee с колонками name, department, salary.
-- Вывести максимальную и среднюю зарплату (salary) по каждому отделу,
-- имеющему больше одного сотрудника.
SELECT department, MAX(salary) AS max_salary, AVG(salary) AS average_salary
FROM employee
GROUP BY department HAVING COUNT(name) > 1
ORDER BY department
