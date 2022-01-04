1. List all customer names, addresses, and phone numbers:
SELECT (cust_fname||' '||cust_lname) AS "Customer Name",
(cust_billing_add_1||' '||cust_billing_add_2||' '||cust_city||' '||cust_state||' '||cust_zip_code) AS "Addresses",
cust_phone AS "Phone Numbers" From Customer;


2. Pick an order and get all information about that order included in the order form.
You don’t need to compute the totals and the delivery fee. This may be split into two queries,
one for the header and the other for the order lines.

Part 1
SELECT o.order_id As "Order Name", (e.emp_fname||' '||e.emp_lname) As "Sales Rep Name", c.cust_id As "Customer Account",
(c.cust_fname||' '||c.cust_lname) As "Customer Name",
(cust_billing_add_1||' '||cust_billing_add_2||' '||cust_city||' '||cust_state||' '||cust_zip_code) AS "Billing Address",
(o.order_delivery_add_1||' '||o.order_delivery_add_2||' '||o.order_delivery_city||' '||o.order_delivery_state||' '||o.order_delivery_zip_code) As "Delivery Address"
From Customer c, Orders o, Employee e Where order_id = 6 and c.cust_id = o.cust_id and o.emp_id = e.emp_id;

Part 2
SELECT f.furn_id As FurnitureID, f.furn_type as Description, f.furn_qty As Quantity, f.furn_price As UnitPrice,
f.furn_qty * f.furn_price as ExtendedPrice From orderdetails d, furniture f where d.furn_id = f.furn_id;

3.What is the phone number of the salesrep who took order in the query above?
SELECT o.order_id, (e.emp_fname||' '||e.emp_lname) as SalesRepName, emp_phone as SalesRepPhoneNo
FROM employee e, orders o WHERE e.emp_id = o.emp_id and o.order_id = 2;

4.Pick a driver and list all customers whose orders have been delivered by him/her.
SELECT (e.emp_fname||' '||e.emp_lname) as DriverName, (c.cust_fname||' '||c.cust_lname) As CustomerName, o.order_id as OrderId,
FROM Orders o, Driver d, customer c, shipment s, truck t, Employee e WHERE c.cust_id = o.cust_id and o.order_id = s.order_id
And s.truck_id = t.truck_id and t.emp_id = d.emp_id and d.emp_id = e.emp_id and d.emp_id = 62422288;

5.What is the total value (quantity time unit price) of all items in stock that have unit prices exceeding $25?
SELECT furn_id, furn_type, ((furn_price)*(furn_qty)) as "Total Value"
FROM Furniture Where furn_price > 25;
