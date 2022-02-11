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