SELECT * FROM company3.employees1;
SELECT phone_number,email from employees1; 
SELECT hire_date from employees1 where last_name="Fay"; 
SELECT hire_date from employees1 where last_name='Grant' or last_name= 'Whalen'; 
SELECT first_name,last_name from employees1 WHERE job_id= (SELECT job_id from jobs1 where job_title='shipping clerk'); 
SELECT first_name,last_name from employees1 WHERE department_id=8; 
SELECT department_name from dept ORDER BY department_id DESC; 
SELECT first_name,last_name from employees1 where last_name like'k%';
SELECT first_name,last_name from employees1 WHERE hire_date between '1995/01/01' and '1997/12/31'; 
SELECT job_title from jobs1 where max_salary <5000;
SELECT email, LOWER(email)from employees1;
SELECT first_name,last_name from employees1 WHERE hire_date LIKE '1995%';
INSERT INTO employees1(employee_id,first_name,last_name,email,phone_number,hire_date,job_id,salary,manager_id,department_id) VALUES
(207,'PAUL','Newton','paul.newton@sqltutorial.org','515.127.4563','1997-12-24',13,2900.00,114,11);
SET SQL_SAFE_UPDATES=0;
SET foreign_key_checks=0;
DELETE from departments where department_name='Shipping';
SET foreign_key_checks=1;
SET SQL_SAFE_UPDATES=1;
