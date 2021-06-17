/*Checkpoint DDL : Data Definition Language */

/*Exersice1: Tables creation*/

CREATE TABLE Customer (
Customer_Id   VARCHAR2 (20) CONSTRAINT pk-customer PRIMARY KEY,
Customer_Name VARCHAR2 (20) CONSTRAINT pk-customer PRIMARY KEY,
Customer_Tel  NUMBER);

CREATE TABLE Product (
Product_Id   VARCHAR2 (20) CONSTRAINT pk-product PRIMARY KEY,
Product_Name VARCHAR2 (20)  NOT Null,
Product_Price  NUMBER  CHECK (product Price > 0));



CREATE  TABLE  Orders(
Quantity NUMBER,
Total_Amount  NUMBER,
CONSTRAINT fk_product FOREIGN KEY (Product_Id) REFERENCES Product (Product_Id),
CONSTRAINT fk_customer FOREIGN KEY (Customer_Id) REFERENCES Customer (Customer_Id));

/*Exersice2 */
/*Add a column Category (VARCHAR2(20)) to the PRODUCT table*/
ALTER TABLE Product ADD Category VARCHAR2 (20);

/*Add a column OrderDate (DATE)  to the ORDERS table which have SYSDATE as a default value*/

ALTER TABLE  Orders ADD Orderdate  DATE;
ALTER TABLE  Orders ADD CONSTRAINT  Orderdate DEFAULT SYSDATE;
