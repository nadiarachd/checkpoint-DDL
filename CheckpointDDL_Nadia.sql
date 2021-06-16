/*Checkpoint DDL : Data Definition Language */

/*Exersice1: Tables creation*/

CREATE TABLE Customer (
Customer_Id   VARCHAR2 (20) CONSTRAINT <Customer_Id>PRIMARY KEY,
Customer_Name VARCHAR2 (20) CONSTRAINT <Customer_Id>PRIMARY KEY,
Customer_Tel  NUMBER);

CREATE TABLE Product (
Product_Id   VARCHAR2 (20) CONSTRAINT <Product_Id>PRIMARY KEY,
Product_Name VARCHAR2 (20) CONSTRAINT <Product_Id>NOT Null,
Product_Price  NUMBER  CONSTRAINT <Product_Price>CHECK (product Price));

CREATE TABLE Product (
Product_Id   VARCHAR2 (20) CONSTRAINT <Product_Id>PRIMARY KEY,
Product_Name VARCHAR2 (20) CONSTRAINT <Product_Id>NOT Null,
Product_Price  NUMBER  CONSTRAINT <Product_Price>CHECK (product Price));

CREATE  TABLE  Orders(
Quantity NUMBER,
Total_Amount  NUMBER,
CONSTRAINT<Product_Id> FOREIGN KEY (Product_Id),
REFERENCE Product (Product_Id),
CONSTRAINT<Customer_Id> FOREIGN KEY (Customer_Id),
REFERENCE Customer (Customer_Id));

/*Exersice2 */
/*Add a column Category (VARCHAR2(20)) to the PRODUCT table*/
ALTER TABLE Product ADD Category VARCHAR2 (20);

/*Add a column OrderDate (DATE)  to the ORDERS table which have SYSDATE as a default value*/

ALTER TABLE  Orders ADD Orderdate  DATE;
ALTER TABLE  Orders ADD CONSTRAINT  Orderdate DEFAULT SYSDATE;
