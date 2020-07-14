/*
The following SELECT statement executes successfully: 
 SELECT last_name, job_id, salary AS Sal 
 FROM   employees; 
*/
True

/*
The following SELECT statement executes successfully: 
 SELECT *  
 FROM   job_grades; 
*/
True

/*
There are four coding errors in the following statement. Can you identify them? 
 SELECT    employee_id, last_name 
           sal x 12  ANNUAL SALARY 
 FROM      employees; 
*/

 SELECT    employee_id, last_name, 
           salaly*12  "ANNUAL SALARY"
 FROM      employees; 

/*
The HR department wants a query to display the last name, job ID, hire date, and 
employee ID for each employee, with the employee ID appearing first. Provide an alias 
STARTDATE for the HIRE_DATE column. Save your SQL statement to a file named 
lab_02_5b.sql so that you can dispatch this file to the HR department. Test your 
query in the lab_02_5b.sql file to ensure that it runs correctly. 
*/
SELECT employee_id, 
       last_name,
       job_id,      
       hire_date    AS STARTDATE
FROM   employees;

/*
The HR department wants a query to display all unique job IDs from the EMPLOYEES table.
*/
SELECT DISTINCT job_id
FROM   employees;

/*
The HR department wants more descriptive column headings for its report on employees. 
Copy the statement from lab_02_5b.sql to a new SQL Worksheet. Name the columns 
Emp #, Employee, Job, and Hire Date, respectively. Then run the query again. 
*/
SELECT employee_id  AS "Emp #", 
       last_name    AS "Employee",
       job_id       AS "Job",      
       hire_date    AS "Hire Date"
FROM   employees;

/*
The HR department has requested a report of all employees and their job IDs. Display the 
last name concatenated with the job ID (separated by a comma and space) and name the 
column Employee and Title. 
*/
SELECT last_name || ', ' || job_id AS "Employee and Title"
FROM   employees; 

/*
To familiarize yourself with the data in the EMPLOYEES table, create a query to display all 
the data from that table. Separate each column output by a comma. Name the column 
THE_OUTPUT. 
*/
SELECT employee_id    ||','||
       first_name     ||','||
       last_name      ||','||
       email          ||','||
       phone_number   ||','||
       hire_date      ||','||
       job_id         ||','||
       salary         ||','||
       commission_pct ||','||
       manager_id     ||','||
       department_id  AS THE_OUTPUT 
FROM   employees;