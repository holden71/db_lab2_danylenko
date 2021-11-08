--Команди створення таблиць:
CREATE TABLE Customers
(
  customer_steamid   char(50)  UNIQUE NOT NULL,
  customer_login     char(50)  NULL,
  customer_password  char(50)  NULL 
);

CREATE TABLE Products
(
  product_id       int           UNIQUE NOT NULL,
  product_name     char(50)      NULL,
  product_price    decimal(5,2)  NULL 
);

CREATE TABLE Orders
(
  order_id          int       UNIQUE NOT NULL,
  customer_steamid  char(50)  NOT NULL,
  product_id        int       NOT NULL,
  order_quantity    int       NOT NULL,
  order_date        date      NOT NULL
);

--Команди налаштування первинних та зовнішніх ключів:
ALTER TABLE Customers ADD CONSTRAINT PK_Customers PRIMARY KEY (customer_steamid);
ALTER TABLE Products ADD CONSTRAINT PK_Products PRIMARY KEY (product_id);
ALTER TABLE Orders ADD CONSTRAINT PK_Orders PRIMARY KEY (order_id);

ALTER TABLE Orders ADD CONSTRAINT FK_Orders_Customers FOREIGN KEY (customer_steamid) REFERENCES Customers (customer_steamid);
ALTER TABLE Orders ADD CONSTRAINT FK_Orders_Products FOREIGN KEY (product_id) REFERENCES Products (product_id);