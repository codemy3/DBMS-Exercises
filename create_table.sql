-- Create Customer Table
CREATE TABLE customer (
    cid INT, 
    cname VARCHAR(25) NOT NULL, 
    dob DATE NOT NULL, 
    city VARCHAR(20), 
    income NUMBER(12,2)
);

-- Create Employee Table
CREATE TABLE employee (
    eid INT PRIMARY KEY, 
    doj DATE NOT NULL, 
    city VARCHAR(15) DEFAULT 'Mangalore', 
    dept VARCHAR(20), 
    bpay NUMBER(10,2), 
    status CHAR(1)
);

-- Create Product Table
CREATE TABLE product1 (
    pid CHAR(6), 
    pname VARCHAR(20), 
    quantity INT, 
    category VARCHAR(20), 
    doe DATE, 
    price NUMBER(10,2)
);

-- Create Loans Table
CREATE TABLE loans (
    lid INT, 
    custid INT, 
    ldate DATE, 
    lamount NUMBER(12,2), 
    lstatus CHAR(1) CHECK (lstatus IN ('A', 'C', 'S'))
);
