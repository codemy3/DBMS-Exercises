-- Function: Calculate Average of 4 Numbers
CREATE OR REPLACE FUNCTION avg_salary(n1 IN INT, n2 IN INT, n3 IN INT, n4 IN INT)
RETURN NUMBER IS
    result NUMBER;
BEGIN
    result := (n1 + n2 + n3 + n4) / 4;
    RETURN result;
END;
/

-- Function: Check if a Customer Exists
CREATE OR REPLACE FUNCTION check_customer(cust_id IN INT)
RETURN NUMBER IS
    exists_flag INT;
BEGIN
    SELECT COUNT(*) INTO exists_flag FROM customer WHERE cid = cust_id;
    IF exists_flag > 0 THEN
        RETURN 1;
    ELSE
        RETURN 0;
    END IF;
END;
/
