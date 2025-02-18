-- Alter Customer Table (Add Constraints)
ALTER TABLE customer ADD CONSTRAINT pk_customer PRIMARY KEY (cid);

-- Alter Employee Table (Constraints)
ALTER TABLE employee ADD CONSTRAINT chk_bpay CHECK (bpay > 10000);
ALTER TABLE employee ADD CONSTRAINT chk_status CHECK (status IN ('T', 'P'));

-- Foreign Key Constraint in Emp2 Table
ALTER TABLE emp2 ADD CONSTRAINT fk_eid FOREIGN KEY (eid) REFERENCES employee(eid);
