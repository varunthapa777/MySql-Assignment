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

DELETE FROM client_mast WHERE state = "Illinois";
SELECT * FROM client_mast;
COMMIT;
DELETE FROM employee WHERE basic_sal < 3500;
SELECT * FROM employee;
ROLLBACK;
SELECT * FROM employee;
SELECT * FROM client_mast;

DELETE FROM employee WHERE basic_sal = 3000 AND job = 'Clerk';
SELECT * FROM employee;

DELETE FROM employee WHERE job = 'Clerk' OR job = 'Manager';
SELECT * FROM employee;

DELETE FROM dept;
SELECT * FROM dept;

DELETE FROM employee WHERE job in ('Manager','Salesman') AND basic_sal > 1500;
SELECT * FROM employee;


UPDATE employee SET ename = "", job = NULL, dept_no = NULL WHERE ename BETWEEN 'C' AND 'L';
SELECT * FROM employee;


SELECT CONCAT(ename," is working as ",job," since ",hiredate ) AS About_employee FROM employee WHERE empno = 'E0001';

INSERT INTO employee VALUES('E0001','Kim', 'Manager', '2002-12-15', 5000, 500, 'D001');

SELECT * FROM employee;


RENAME TABLE client_mast to T_client_mast;

SELECT ename AS 'Employee Name' FROM employee;