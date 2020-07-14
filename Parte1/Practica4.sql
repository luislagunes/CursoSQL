/*
Write a query to display the system date. Label the column Date. 
Note: If your database is remotely located in a different time zone, the output will be the 
date for the operating system on which the database resides.
*/
 SELECT sysdate AS "Date"
 FROM   dual;

 /*
The HR department needs a report to display the employee number, last name, salary, and 
salary increased by 15.5% (expressed as a whole number) for each employee. Label the 
column New Salary. Save your SQL statement in a file named lab_04_02.sql. 
*/
SELECT employee_id,
       last_name,
       salary,
       ROUND(salary * 1.155) AS "New Salary"
FROM   employees;

/*
Modify your query in lab_04_02.sql to add a column that subtracts the old salary from 
the new salary. Label the column Increase. Save the contents of the file as 
lab_04_04.sql. Run the revised query
*/
SELECT employee_id,
       last_name,
       salary,
       ROUND(salary * 1.155) AS "New Salary",
       ROUND(salary * 1.155) - salary AS "Increase"
FROM   employees;

/*
 Write a query that displays the last name (with the first letter in uppercase and all the 
other letters in lowercase) and the length of the last name for all employees whose 
name starts with the letters “A,” or “M.” Give each column an appropriate label. Sort the 
results by the employees’ last names. 
*/
SELECT   INITCAP(last_name),
         LENGTH(last_name) 
FROM     employees
WHERE    SUBSTR(UPPER(last_name),1,1) = 'A'
OR       SUBSTR(UPPER(last_name),1,1) = 'M'
ORDER BY last_name;

/*
Rewrite the query so that the user is prompted to enter the letter that the last name 
starts with. For example, if the user enters “H” (capitalized) when prompted for a letter, 
the output should show all employees whose last name starts with the letter “H.” 
*/
SELECT   INITCAP(last_name),
         LENGTH(last_name) 
FROM     employees
WHERE    SUBSTR(UPPER(last_name),1,1) = UPPER('&letter')
ORDER BY last_name;

/*
Modify the query such that the case of the letter that is entered does not affect the 
output. The entered letter must be capitalized before being processed by the SELECT 
query. 
*/
SELECT   INITCAP(last_name),
         LENGTH(last_name) 
FROM     employees
WHERE    SUBSTR(UPPER(last_name),1,1) = UPPER('&letter')
ORDER BY last_name;

/*
 The HR department wants to find the duration of employment for each employee. For each 
employee, display the last name and calculate the number of months between today and the 
date on which the employee was hired. Label the column as MONTHS_WORKED. Order your 
results by the number of months employed. The number of months must be rounded to the 
closest whole number. 
*/
SELECT   last_name,
         ROUND(MONTHS_BETWEEN(sysdate,hire_date)) AS "MONTHS_WORKED"
FROM     employees
ORDER BY 2 ASC;  

/*
 Create a query to display the last name and salary for all employees. Format the salary to 
be 15 characters long, left-padded with the $ symbol. Label the column SALARY. 
*/
SELECT   last_name,
         LPAD(salary,15,'$') AS SALARY
FROM     employees;

/*
Create a query that displays the employees’ last names, and indicates the amounts of their 
salaries with asterisks. Each asterisk signifies a thousand dollars. Sort the data in 
descending order of salary. Label the column SALARIES_IN_ASTERISK. 
*/
SELECT last_name,
       LPAD(' ',ROUND(salary/1000)+1,'*')
FROM   employees;

/*
 Create a query to display the last name and the number of weeks employed for all 
employees in department 90. Label the number of weeks column as TENURE. Truncate the 
number of weeks value to 0 decimal places. Show the records in descending order of the 
employee’s tenure. 
*/
SELECT last_name, 
       TRUNC((sysdate-hire_date)/7) AS TENURE
FROM   employees
WHERE  department_id = 90;