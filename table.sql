CREATE TABLE Product (
    Product_id VARCHAR2(20) PRIMARY KEY,
    Product_name VARCHAR2(20) NOT NULL,
    Price NUMBER POSITIVE VALUE,
);
CREATE TABLE Customer (
    Customer_id VARCHAR2(20) PRIMARY KEY,
    Customer_name VARCHAR2(20) NOT NULL,
    Customer_Tel NUMBER ,
);
CREATE TABLE ORDERS (
    Customer_id VARCHAR2(20) FOREIGN KEY,
    Product_id VARCHAR2(20) FOREIGN KEY,
    Quantity  NUMBER ,
    Total_amount  NUMBER ,
);
ALTER TABLE Product ADD Category VARCHAR2(20);
ALTER TABLE ORDERS ADD OrderDate DATE DEFAULT SYSDATE;