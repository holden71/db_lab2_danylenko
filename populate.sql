-- Заповнення таблиці Customers
INSERT INTO Customers
VALUES ('STEAM_0:0:9773688', 'hubabubt',     'CKarapjo02'),
	   ('STEAM_0:0:2708101', 'zoryana2019',  'I_m_m_o_r_t99_a_L'),
	   ('STEAM_0:0:9813809', 'henrey_old',   '((QwErTy12))'),
	   ('STEAM_0:0:2858723', 'nosacostra2',  'dPX9R3cr25'),
	   ('STEAM_0:0:5230065', 'geogrygubma',  'fsd#J23ja0_f9'),
	   ('STEAM_0:0:6823432', 'antonkira212', 'XTR_BTR_02'),
	   ('STEAM_0:0:7112050', 'Doze0Maar',    'Ubeyte24151'),
	   ('STEAM_0:0:1934673', 'mErKaVa979',   '12motD6f');

-- Заповнення таблиці Products
INSERT INTO Products
VALUES (0001, 'EdgeHud',   4.99),
	   (0002, 'gProtect',  4.99),
	   (0003, 'SCB',       9.79),
	   (0004, 'IED',       5.39),
	   (0005, 'uWeed',     6.08),
	   (0006, 'Cyber HUD', 8.79),
	   (0007, 'DWeapons',  7.49),
	   (0008, 'McPhone',   9.99);

-- Заповнення таблиці Orders
INSERT INTO Orders
VALUES (00000001, 'STEAM_0:0:1934673', 0003, 10, TO_DATE('01-06-2021', 'dd-mm-yyyy')),
	   (00000002, 'STEAM_0:0:2708101', 0004, 1,  TO_DATE('01-06-2021', 'dd-mm-yyyy')),
	   (00000003, 'STEAM_0:0:2708101', 0006, 3,  TO_DATE('01-06-2021', 'dd-mm-yyyy')),
	   (00000004, 'STEAM_0:0:1934673', 0002, 8,  TO_DATE('04-06-2021', 'dd-mm-yyyy')),
	   (00000005, 'STEAM_0:0:7112050', 0005, 3,  TO_DATE('04-06-2021', 'dd-mm-yyyy')),
	   (00000006, 'STEAM_0:0:1934673', 0006, 2,  TO_DATE('09-06-2021', 'dd-mm-yyyy')),
	   (00000007, 'STEAM_0:0:9773688', 0001, 5,  TO_DATE('09-06-2021', 'dd-mm-yyyy')),
	   (00000008, 'STEAM_0:0:9813809', 0003, 1,  TO_DATE('16-06-2021', 'dd-mm-yyyy')),
	   (00000009, 'STEAM_0:0:2858723', 0007, 3,  TO_DATE('19-06-2021', 'dd-mm-yyyy')),
	   (00000010, 'STEAM_0:0:1934673', 0005, 4,  TO_DATE('20-06-2021', 'dd-mm-yyyy')),
	   (00000011, 'STEAM_0:0:7112050', 0008, 6,  TO_DATE('25-06-2021', 'dd-mm-yyyy'));


