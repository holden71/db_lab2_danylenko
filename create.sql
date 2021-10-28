--Команди створення таблиць:
CREATE TABLE Customers
(
  customer_id      char(10)  UNIQUE NOT NULL,
  customer_bdate   date      NOT NULL,
  customer_income  int       NOT NULL 
);

CREATE TABLE Products
(
  product_barcode  char(50)  UNIQUE NOT NULL,
  product_name     char(50)  NOT NULL,
  product_price    int       NOT NULL 
);

CREATE TABLE Rating
(
  product_barcode   char(50)  NOT NULL,
  competition_year  int  NOT NULL,
  product_position  int       NOT NULL
);

CREATE TABLE Spendings 
(
  customer_id      char(10)  NOT NULL,
  product_barcode  char(50)  NOT NULL,
  spent_money      int       NOT NULL
);

--Команди налаштування первинних та зовнішніх ключів:
ALTER TABLE Customers ADD CONSTRAINT PK_Customers PRIMARY KEY (customer_id);
ALTER TABLE Products ADD CONSTRAINT PK_Products PRIMARY KEY (product_barcode);
ALTER TABLE Spendings ADD CONSTRAINT PK_Spendings PRIMARY KEY (customer_id, product_barcode);
ALTER TABLE Rating ADD CONSTRAINT PK_Rating PRIMARY KEY (product_barcode, competition_year);

ALTER TABLE Spendings ADD CONSTRAINT FK_Spendings_Customers FOREIGN KEY (customer_id) REFERENCES Customers (customer_id);
ALTER TABLE Spendings ADD CONSTRAINT FK_Spendings_Products FOREIGN KEY (product_barcode) REFERENCES Products (product_barcode);
