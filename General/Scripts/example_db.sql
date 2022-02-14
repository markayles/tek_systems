-- create database called example_db
-- employee table has emp id, name, and age
-- address table has address id, address street, city, state, and fk_emp_id, timestamp with a default value of time now
-- constraints fk in address table to employee table

create database example_db;
use example_db;




create table employee (
	emp_id int(4) PRIMARY KEY auto_increment,
	name varchar(255) NOT NULL DEFAULT 'MISSING',
	age tinyint check(age >= 0)
);

describe employee;
insert into employee values(null, 'Mark', 27);
select * from employee;




create table address (
	address_id int(11) primary key auto_increment,
	address_street varchar(225) not null default 'UNKNOWN',
	city varchar(255) not null default 'UNKNOWN',
	state char(2) not null default '??',
	timeestamp TIMESTAMP not null default NOW(6),
	fk_emp_id int(4),
	constraint some_name foreign key(fk_emp_id) references employee(emp_id)
);

describe address;
insert into address values(null, '123 Main St', 'Tewksbury', 'MA', null, 1);
select * from address;
delete from address where address_id = 124;