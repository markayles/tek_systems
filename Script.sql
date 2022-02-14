-- uses the database
use classicmodels;
-- give a describtion of the databases
describe offices;
select * from customers;
select * from employees;
/*
 * show all the employees in office number
 * */
select * from employees where officeCode  = 4;

SELECT count(*) FROM employees;

select distinct orderNumber from orderdetails;


select * from offices;
insert into offices values('8', 'Plano', '5554443333', '123 Street', null, 'TX', 'USA', '12345', 'NA');
delete from offices where officeCode = '8';