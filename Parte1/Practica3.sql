/*
Because of budget issues, the HR department needs a report that displays the last name 
and salary of employees who earn more than $12,000. Save your SQL statement as a file 
named lab_03_01.sql. Run your query. 
*/
SELECT last_name, 
       salary
FROM   employees
WHERE  salary > 12000;

/*
Open a new SQL Worksheet. Create a report that displays the last name and department 
number for employee number 176.  
*/
SELECT last_name,
       department_id
FROM   employees
WHERE  employee_id = 176;

/*
The HR department needs to find high-salaried and low-salaried employees. Modify 
lab_03_01.sql to display the last name and salary for any employee whose salary is not 
in the range $5,000 through $12,000. Save your SQL statement as lab_03_03.sql. 
*/
SELECT last_name, 
       salary
FROM   employees
WHERE  salary NOT BETWEEN 5000 AND 12000;

/*
Create a report to display the last name, job ID, and hire date for employees with the last 
names of Matos and Taylor. Order the query in ascending order by hire date. 
*/
SELECT last_name, 
       job_id
       hire_date
FROM   employees
WHERE  last_name = 'Matos'
OR     last_name = 'Taylor';

/*
Display the last name and department ID of all employees in department 20 or department 
50 in ascending alphabetical order by last_name. 
*/
SELECT last_name, department_id 
FROM   employees
WHERE  department_id IN (20, 50);

/*
Modify lab_03_03.sql to display the last name and salary of employees who earn 
between $5,000 and $12,000, and are in department 20 or department 50. Label the 
columns Employee and Monthly Salary, respectively. Save lab_03_03.sql as 
lab_03_06.sql. Run the statement in lab_03_06.sql. 
*/
SELECT last_name AS "Employee", 
       salary    AS "Monthly Salary"
FROM   employees
WHERE  salary NOT BETWEEN 5000 AND 12000
AND    department_id IN (20, 50);

/*
The HR department needs a report that displays the last name and hire date of all 
employees who were hired in 2010. 
*/
SELECT last_name,
       hire_date 
FROM   employees
WHERE  EXTRACT(YEAR FROM hire_date) = 2010;

/*
Create a report to display the last name and job title of all employees who do not have a 
manager. 
*/
SELECT last_name,
       job_id 
FROM   employees
WHERE  manager_id IS NULL;

/*
Create a report to display the last name, salary, and commission of all employees who earn 
commissions. Sort the data in descending order of salary and commissions. 
Use the column’s numeric position in the ORDER BY clause. 
*/
SELECT last_name,
       salary,
       commission_pct
FROM   employees
WHERE  commission_pct IS NOT NULL;

/*
 Members of the HR department want to have more flexibility with the queries that you are 
writing. They would like a report that displays the last name and salary of employees who 
earn more than an amount that the user specifies after a prompt. Save this query to a file 
named lab_03_10.sql. (You can use the query created in Task 1 and modify it.)
*/
SELECT last_name, 
       salary 
FROM   employees
WHERE  salary > $salary

/*
The HR department wants to run reports based on a manager. Create a query that prompts 
the user for a manager ID, and generates the employee ID, last name, salary, and 
department for that manager’s employees. The HR department wants the ability to sort the 
report on a selected column. You can test the data with the following values:
*/
SELECT   employee_id,
         last_name, salary,
         department_id
FROM     employees
WHERE    manager_id = &manager
ORDER BY &order;

/*
Display the last names of all employees where the third letter of the name is “a.” 
*/
SELECT last_name 
FROM   employees
WHERE  last_name LIKE '__a%';

/*
Display the last names of all employees who have both an “a” and an “e” in their last name.
*/
SELECT last_name
FROM   employees
WHERE  last_name LIKE '%a%'
AND    last_name LIKE '%e%';

/*
Display the last name, job, and salary for all employees whose jobs are either that of a 
sales representative or a stock clerk, and whose salaries are not equal to $2,500, $3,500, 
or $7,000.
*/
SELECT last_name,
       job_id, 
       salary
FROM   employees
WHERE  job_id IN ('SA_REP', 'ST_CLERK')
AND    salary NOT IN (2500, 3500, 7000);

/*
Modify lab_03_06.sql to display the last name, salary, and commission for all 
employees whose commission is 20%. Save lab_03_06.sql as lab_03_15.sql. Rerun 
the statement in lab_03_15.sql. 
*/
SELECT last_name      AS "Employee", 
       salary         AS "Monthly Salary",
       commission_pct AS "Commission"
FROM   employees
WHERE  commission_pct = .2;
