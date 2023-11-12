-- 1
ALTER TABLE employee ADD COLUMN telephone_no INT;
SELECT * FROM employee;

-- 2
ALTER TABLE client_mast ADD COLUMN country CHAR(15);
SELECT * FROM client_mast;

-- 3
ALTER TABLE product_mast MODIFY description VARCHAR(16);
DESC product_mast;

--4 
ALTER TABLE product_mast ADD PRIMARY KEY(product_no);
DESC product_mast;

--5 
ALTER TABLE client_mast DROP PRIMARY KEY;
DESC client_mast;

-- 6
ALTER TABLE dept MODIFY deptno varchar(8) NOT NULL;
DESC dept;

-- 7
SELECT empno, ename, (basic_sal*12) AS 'Annual Salary' FROM employee;

-- 8 
ALTER TABLE dept ADD COLUMN hod VARCHAR(15), ADD COLUMN strength VARCHAR(15);
SELECT * FROM dept;

-- 9
DELETE FROM dept;
ALTER TABLE dept ADD CONSTRAINT chk_deptno CHECK( deptno IN ('D001','D002','D003')); 

-- 10 
CREATE VIEW empview AS SELECT * FROM employee WHERE basic_sal =3000 AND job = 'Clerk';
SELECT * FROM empview;

-- 11
DROP VIEW empview;

-- 13
CREATE VIEW empview AS SELECT empno, ename, basic_sal FROM employee;