
 -- 1
 UPDATE client_mast SET city = 'paul street' WHERE client_no = 'B001';

 -- 2
 UPDATE client_mast SET bal_due = 2000 WHERE client_no = 'B005';

-- 3
 UPDATE client_mast SET name = "infospace" WHERE client_no = 'B004';

-- 4
 UPDATE client_mast SET client_no = "B009" WHERE client_no = 'B004';

-- 5
 UPDATE salesman_mast SET city = "Huston" WHERE city = "Jacksonville";

-- 6
 UPDATE employee SET basic_sal = 3000 WHERE basic_sal < 2500;

-- 7
 UPDATE employee SET basic_sal = 3000 WHERE job = 'clerk';

-- 8
 UPDATE employee SET basic_sal = 3500 WHERE empno = 'E0004';

-- 9
 UPDATE dept SET dname = 'Sales' WHERE deptno = 'D004';

-- 10
 UPDATE product_mast SET description = "AC" WHERE product_no = "PR065";

-- 11
 UPDATE product_mast SET profit_perc = 25 WHERE product_no = "PR065";
 
-- 12
 UPDATE product_mast SET qty_available = 120 WHERE product_no = "PR065";

-- 13
 UPDATE product_mast SET cost_price = 5000, sell_price = 6250 WHERE product_no = "PR065";
 
-- 14
 UPDATE product_mast SET units = 'pack of 10' WHERE product_no = "PR065";
