INSERT INTO Employee Values((62219511,222333777,'John','Doe','7481 South Lane','Apt 3A','Beloit','Texas',73511,4097731226,70000,'Sales Rep'),
(62311199, 558899333, 'Herman', 'Clarke', '8685 Corona St', 'Building no: 2A', 'Corpus Christi', 'Texas', 78418, 6085718768, 60000, 'Driver'),
(62422288, 333222999, 'Jonas', 'Smith', '857 West Hill Field Lane', 'Apt 27', 'Norwich', 'Texas', 76925, 3119332772, 60000, 'Driver'),
(62533366, 222333555, 'Frank', 'Johnson', '23 East Olive St', 'Apt B', 'Barberton', 'Texas', 75213, 4428543236,  80000,  'Manager'),
(62633322, 555666777, 'Clare', 'Johanson', '7645 East Proctor St' , 'Apt 3C', 'North Augusta', 'Texas', 76335, 3138756972, 75000, 'Supervisor'));

INSERT INTO Furniture (FURN_ID, FURN_TYPE, FURN_PRICE, FURN_QTY)
VALUES ((10023311, 'Executive Chair' , 50.00 , 80),
(10034422, 'Desk', 65.00, 50),
(10045533, 'Coffee Table',  75.00, 30),
(10056677, 'Arm Chair', 20.00, 60),
(10067788, 'Bench', 40.00, 55),
(10079955, 'Mirror', 25.00, 40));

INSERT INTO CUSTOMER (cust_id,cust_fname,cust_lname,cust_phone,cust_billing_add_1,cust_billing_add_2,cust_city,cust_state,cust_zip_code)
VALUES()

INSERT INTO Shipment(shipment_id, order_id, truck_id, delivery_date)
VALUES((10001, 2, 99922288, "12-Dec-21"))

INSERT INTO Orders (order_id, cust_id, order_delivery_add_1, order_delivery_add_2, order_delivery_city, order_delivery_state, order_delivery_zip_code, order_delivery_charge, order_amount, delivery_required, emp_id)
VALUES ((000001, 1, ‘136 Harper Rd', ‘Apt 2’, ‘Arlington’, ‘Texas’, 75011, 50, 11, ‘Y’, 62219511),
(000002, 5, ‘4834 Tanglewood Road’, ‘Apt 665’, ‘Arlington’, ‘Texas’, 78061, 0, 20, ‘Y’, 62744488),
(000003, 2, ‘3054 Poplar Street', ‘Apt 2’, ‘Arlington’, ‘Texas’, 74881, 50, 8, ‘Y’, 62219511),
(000004, 3, ‘136 Katy Perry Rd', ‘Apt 009’, ‘Arlington’, ‘Texas’, 65811, 0, 4, ‘Y’, 62744488),
(000005, 4, ‘3253 Oakridge Farm Lane', ‘Apt 2’, ‘Arlington’, ‘Texas’, 53213, 50, 13, ‘Y’, 62219511),
(000006, 5, ‘3502 Melville Street', ‘Apt 2’, ‘Arlington’, ‘Tennessee’, 38002, 50, 17, ‘Y’, 62744488),
(000007, 4, ‘1234 Mulberry Hill Rd', ‘Apt 123’, ‘Coppell’, ‘Texas’, 95019, 50, 6, ‘Y’, 62744488),
(000008, 2, ‘4625 Dye Street', ‘Apt 2’, ‘Chandler’, ‘Arizona’, 39357, 0, 10, ‘Y’, 62219511));
