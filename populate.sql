-- Заповнення таблиці Customers
INSERT INTO Customers(customer_id, customer_bdate, customer_income)
VALUES('5524', TO_DATE('1957-08-14', 'yyyy-mm-dd'), 58138);
INSERT INTO Customers(customer_id, customer_bdate, customer_income)
VALUES('2174', TO_DATE('1954-03-07', 'yyyy-mm-dd'), 46344);
INSERT INTO Customers(customer_id, customer_bdate, customer_income)
VALUES('4141', TO_DATE('1965-06-22', 'yyyy-mm-dd'), 71613);
INSERT INTO Customers(customer_id, customer_bdate, customer_income)
VALUES('6182', TO_DATE('1984-01-01', 'yyyy-mm-dd'), 26646);
INSERT INTO Customers(customer_id, customer_bdate, customer_income)
VALUES('5324', TO_DATE('1981-11-13', 'yyyy-mm-dd'), 58293);
INSERT INTO Customers(customer_id, customer_bdate, customer_income)
VALUES('7446', TO_DATE('1967-09-30', 'yyyy-mm-dd'), 62513);
INSERT INTO Customers(customer_id, customer_bdate, customer_income)
VALUES('965',  TO_DATE('1971-05-10', 'yyyy-mm-dd'), 55635);
INSERT INTO Customers(customer_id, customer_bdate, customer_income)
VALUES('6177', TO_DATE('1985-02-07', 'yyyy-mm-dd'), 33454);


-- Заповнення таблиці Products
INSERT INTO Products(product_barcode, product_name, product_price)
VALUES('CH1558061', 'Pavillon Blanc du Ch Margaux Bordeauх Blanc 2006',  99);
INSERT INTO Products(product_barcode, product_name, product_price)
VALUES('KD5233121', 'Apple Golden Ukraine',  29.99);
INSERT INTO Products(product_barcode, product_name, product_price)
VALUES('PL3223001', 'Kolbasa Doctorskaya',   44.99);
INSERT INTO Products(product_barcode, product_name, product_price)
VALUES('PL3528521', 'Salmon fillet GRAVLAX', 69.99);
INSERT INTO Products(product_barcode, product_name, product_price)
VALUES('TB0128413', 'Toblerone Raisins',     34.79);
INSERT INTO Products(product_barcode, product_name, product_price)
VALUES('GLD092000', 'Ring W 0187 585',       149.99);


-- Заповнення таблиці Spendings
INSERT INTO Spendings(customer_id, product_barcode, spent_money)
VALUES('5524', 'PL3528521', 250);
INSERT INTO Spendings(customer_id, product_barcode, spent_money)
VALUES('5524', 'TB0128413', 88);
INSERT INTO Spendings(customer_id, product_barcode, spent_money)
VALUES('2174', 'CH1558061', 150);
INSERT INTO Spendings(customer_id, product_barcode, spent_money)
VALUES('4141', 'TB0128413', 30);
INSERT INTO Spendings(customer_id, product_barcode, spent_money)
VALUES('6182', 'PL3223001', 20);
INSERT INTO Spendings(customer_id, product_barcode, spent_money)
VALUES('5324', 'PL3223001', 456);
INSERT INTO Spendings(customer_id, product_barcode, spent_money)
VALUES('5324', 'KD5233121', 43);
INSERT INTO Spendings(customer_id, product_barcode, spent_money)
VALUES('6177', 'GLD092000', 39);
INSERT INTO Spendings(customer_id, product_barcode, spent_money)
VALUES('965', 'GLD092000',  200);
INSERT INTO Spendings(customer_id, product_barcode, spent_money)
VALUES('6177', 'KD5233121', 60);

-- Заповнення таблиці Rating
INSERT INTO Rating(product_barcode, competition_year, product_position)
VALUES('KD5233121', 1999, 1);
INSERT INTO Rating(product_barcode, competition_year, product_position)
VALUES('PL3528521', 1997, 2);
INSERT INTO Rating(product_barcode, competition_year, product_position)
VALUES('TB0128413', 1999, 2);
INSERT INTO Rating(product_barcode, competition_year, product_position)
VALUES('KD5233121', 1991, 3);
INSERT INTO Rating(product_barcode, competition_year, product_position)
VALUES('GLD092000', 1997, 1);
INSERT INTO Rating(product_barcode, competition_year, product_position)
VALUES('PL3528521', 1996, 2);
INSERT INTO Rating(product_barcode, competition_year, product_position)
VALUES('CH1558061', 1999, 3);
INSERT INTO Rating(product_barcode, competition_year, product_position)
VALUES('TB0128413', 1997, 4);
INSERT INTO Rating(product_barcode, competition_year, product_position)
VALUES('GLD092000', 1998,  7);
INSERT INTO Rating(product_barcode, competition_year, product_position)
VALUES('CH1558061', 1996, 4);
INSERT INTO Rating(product_barcode, competition_year, product_position)
VALUES('PL3223001', 1998, 2);
