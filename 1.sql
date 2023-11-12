
CREATE DATABASE varun;

use varun;

CREATE TABLE employee( empno varchar(6) primary key, ename varchar(20) NOT NULL, job char(10), hiredate date, basic_sal float, comm float, dept_no varchar(4));

INSERT INTO employee VALUES("E0001", "Kim", "Manager", "2002-12-15", 5000, 500, "D001");
INSERT INTO employee VALUES("E0002", "Bruce", "Analyst", "1999-04-09", 4000, 400, "D002");
INSERT INTO employee VALUES("E0003", "Arnold", "Clerk", "2001-01-10", 2500, 250, "D004");
INSERT INTO employee VALUES("E0004", "Holyfield", "Tester", "2001-10-10", 3000, 300, "D002");
INSERT INTO employee VALUES("E0005", "Kelly", "Admin", "1999-04-11", 2000, 200, "D003");

CREATE TABLE dept( deptno varchar(8), dname varchar(20), loc varchar(20));
INSERT INTO dept VALUES("D001", "Development", "Noida");
INSERT INTO dept VALUES("D002", "R & D", "Rocky Creek");
INSERT INTO dept VALUES("D003", "Admin", "Seattle");
INSERT INTO dept VALUES("D004", "Accounts", "Seattle");
INSERT INTO dept VALUES("D005", "Production", "Noida");

CREATE TABLE client_mast( client_no varchar(6) primary key, name varchar(20) not null, address varchar(25), city varchar(20), pincode int, state varchar(15), bal_due float);
INSERT INTO client_mast VALUES( "B001", "Procurez", "12, sunbay street", "Gainesville", 1233, "Florida", 3500);
INSERT INTO client_mast VALUES( "B002", "BMW", "6, Rocky creek", "Jacksonville", 1234, "Florida", 3488);
INSERT INTO client_mast VALUES( "B003", "Takenote", "7, Hudson", "Puria", 6454, "Illinois", 4555);
INSERT INTO client_mast VALUES( "B004", "Teoco", "1243, princiton circle", "Fairfax", 3433, "Virginia", 4433);
INSERT INTO client_mast VALUES( "B005", "ASAP", "23, North city", "Puria", 4354, "Illinois", 3600);

CREATE TABLE product_mast( product_no varchar(6), description  varchar(14), profit_perc float, units varchar(10), qty_available int, sell_price float, cost_price float);
INSERT INTO product_mast VALUES("PR023", "CD Player", 5, "Piece", 100, 210, 200);
INSERT INTO product_mast VALUES("PR045", "Television", 10, "Piece", 35, 1320, 1200);
INSERT INTO product_mast VALUES("PR055", "Refrigerator", 15, "Piece", 60, 920, 800);
INSERT INTO product_mast VALUES("PR065", "Oven", 12, "Piece", 40, 504, 450);
INSERT INTO product_mast VALUES("PR075", "Microwave", 20, "Piece", 100, 900, 750);

CREATE TABLE salesman_mast( salesman_no varchar(10), name varchar(20) not null, address varchar(20), city varchar(18), pincode int, state varchar(15), sal_amount float, target float);
INSERT INTO salesman_mast VALUES("SA001", "Sammy", "43, NW", "Jacksonville", 1234, "Florida", 2500, 200);
INSERT INTO salesman_mast VALUES("SA002", "Aron", "2, Avenue", "Gainesville", 1233, "Florida", 2500, 200);
INSERT INTO salesman_mast VALUES("SA003", "Quincy", "2, moon App", "Janesville", 1235, "Florida", 2500, 200);
INSERT INTO salesman_mast VALUES("SA004", "Teddy", "3, Silver-spoons", "Harryville", 1233, "Tennessee", 2300, 200);
INSERT INTO salesman_mast VALUES("SA005", "Byron", "4, st. Street", "Puria", 12, "Illinois", 3500, 100);

