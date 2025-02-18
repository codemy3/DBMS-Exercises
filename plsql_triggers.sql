-- Trigger: Fires on Insert in Customer Table
CREATE OR REPLACE TRIGGER trig_cust 
AFTER INSERT ON customer 
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE ('One record inserted');
END;
/

-- Trigger for DML Operations on Product Table
CREATE OR REPLACE TRIGGER trig_product1 
AFTER INSERT OR DELETE OR UPDATE ON product1 
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        DBMS_OUTPUT.PUT_LINE ('One record inserted');
    ELSIF UPDATING THEN
        DBMS_OUTPUT.PUT_LINE ('One record updated');
    ELSE
        DBMS_OUTPUT.PUT_LINE ('One record deleted');
    END IF;
END;
/

-- Trigger to Log Changes in Baccount Table
CREATE OR REPLACE TRIGGER trig_ba2 
AFTER INSERT OR UPDATE OR DELETE ON baccount 
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO baccount2 VALUES(:NEW.id, :NEW.holder_name, :NEW.ac_type, :NEW.aod, 'I');
    ELSIF UPDATING THEN
        INSERT INTO baccount2 VALUES(:OLD.id, :OLD.holder_name, :OLD.ac_type, :OLD.aod, 'U');
    ELSE
        INSERT INTO baccount2 VALUES(:OLD.id, :OLD.holder_name, :OLD.ac_type, :OLD.aod, 'D');
    END IF;
END;
/
