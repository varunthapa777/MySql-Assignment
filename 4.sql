-- 1

SET AUTOCOMMIT=OFF;
COMMIT;
SELECT * FROM salesman_mast;
DELETE FROM salesman_mast WHERE sal_amount = 2500;

-- 2
ROLLBACK;

-- 3
DELETE FROM product_mast WHERE qty_available = 100;
SELECT * FROM product_mast;
COMMIT;

-- 4

DELETE FROM client_mast WHERE state = "Illinois";
SELECT * FROM client_mast;
COMMIT;
DELETE FROM employee WHERE basic_sal < 3500;
SELECT * FROM employee;

-- 5
ROLLBACK;
SELECT * FROM employee;
SELECT * FROM client_mast;

-- 6
DELETE FROM employee WHERE basic_sal = 3000 AND job = 'Clerk';
SELECT * FROM employee;

-- 7
DELETE FROM employee WHERE job = 'Clerk' OR job = 'Manager';
SELECT * FROM employee;

-- 8
DELETE FROM dept;
SELECT * FROM dept;

-- 9
DELETE FROM employee WHERE job in ('Manager','Salesman') AND basic_sal > 1500;
SELECT * FROM employee;

-- 10
UPDATE employee SET ename = "", job = NULL, dept_no = NULL WHERE ename BETWEEN 'C' AND 'L';
SELECT * FROM employee;

-- 11
SELECT CONCAT(ename," is working as ",job," since ",hiredate ) AS About_employee FROM employee WHERE empno = 'E0001';

-- 12
INSERT INTO employee VALUES('E0001','Kim', 'Manager', '2002-12-15', 5000, 500, 'D001');
SELECT * FROM employee;

-- 12
RENAME TABLE client_mast to T_client_mast;

-- 13
SELECT ename AS 'Employee Name' FROM employee;