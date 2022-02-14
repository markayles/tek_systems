USE banking;


-- 1. For each product, show the product name "Product" and the product type name "Type".
SELECT name AS 'Product', product_type_cd AS 'Type' FROM product;


-- 2. For each branch, list the branch name and city, plus the last name and title of each employee who works in that branch.
SELECT b.NAME AS 'Branch Name', b.CITY AS 'City', e.LAST_NAME AS 'Employee Last Name', e.TITLE AS 'Employee Title'
FROM branch b JOIN employee e ON b.BRANCH_ID = e.ASSIGNED_BRANCH_ID;


-- 3. Show a list of each unique employee title.
SELECT DISTINCT title FROM employee;


-- 4. Show the last name and title of each employee, along with the last name and title of that employee's boss.
SELECT e.LAST_NAME AS 'Employee Last Name', e.TITLE AS 'Employee Title', s.LAST_NAME AS 'Superior Last Name', s.TITLE AS 'Superior Title' 
FROM employee e JOIN employee s ON e.SUPERIOR_EMP_ID = s.EMP_ID;


-- 5. For each account, show the name of the account's product, the available balance, and the customer's last name.
SELECT p.NAME AS 'Product Name', a.AVAIL_BALANCE AS 'Available Balance', i.LAST_NAME AS 'Customer Last Name'
FROM account a 
JOIN product p ON p.PRODUCT_CD = a.PRODUCT_CD
JOIN individual i ON i.CUST_ID  = a.CUST_ID;


-- 6. List all account transaction details for individual customers whose last name starts with 'T'.
SELECT at2.*, i.LAST_NAME FROM acc_transaction at2
JOIN account a ON a.ACCOUNT_ID = at2.ACCOUNT_ID
JOIN individual i ON i.CUST_ID = a.CUST_ID
WHERE i.LAST_NAME LIKE 'T%';









