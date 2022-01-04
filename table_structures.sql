CREATE TABLE "Customer" (
	"cust_id"	Number(8),
	"cust_fname"	VARCHAR2(15),
	"cust_lname"	VARCHAR2(15),
	"cust_phone "	VARCHAR2(20),
	"cust_billing_add_1"VARCHAR2(50),
	"cust_billing_add_2"VARCHAR2(50),
	"cust_city"	Varchar2(15),
	"cust_state"	VARCHAR2(20),
	"cust_zip_code"	INTEGER,
	PRIMARY KEY("cust_id")
);
CREATE TABLE "Employee" (
	"emp_id"	Number(8),
	"emp_ssn"	VARCHAR(9),
	"emp_fname"	VARCHAR(15),
	"emp_lname"	VARCHAR(15),
	"emp_add_1"	VARCHAR2(50),
	"emp_add_2"	VARCHAR2(50),
	"emp_city"	VARCHAR2(15),
	"emp_state"	VARCHAR2(20),
	"emp_zip_code"	NUMBER(5),
	"emp_phone"	VARCHAR2(20),
	"emp_salary"	VARCHAR2(10),
	"emp_type"	VARCHAR(15),
	PRIMARY KEY("emp_id")
);
CREATE TABLE "Orders" (
	"order_id"	Number(10),
	"cust_id"	Number(8),
	"order_delivery_add_1"	VARCHAR2(50),
	"order_delivery_add_2"	VARCHAR2(50),
	"order_delivery_city"	VARCHAR2(15),
	"order_delivery_state"	VARCHAR(20),
	"order_delivery_zip_code"	NUMBER(5),
	"order_delivery_charge"	NUMBER(10 , 2),
	"order_amt"	Number(10 , 2) NOT NULL,
	"delivery_required"	CHAR(1),
	"emp_id"	NUMBER(8),
	PRIMARY KEY("order_id"),
	FOREIGN KEY("emp_id") REFERENCES "Employee"("emp_id"),
	FOREIGN KEY("cust_id") REFERENCES "Customer"("cust_id")
);

CREATE TABLE "Driver" (
	"emp_id"	Number(8),
	"driver_license_no"	VARCHAR2(20),
	"driver_license_exp_date"	DATE,
	FOREIGN KEY("emp_id") REFERENCES "Employee"("emp_id"),
	PRIMARY KEY("emp_id")
);
CREATE TABLE "SalesRepresentative" (
	"emp_id"	Number(8),
	"Sales_rep_commission"	Number(10 , 2),
	FOREIGN KEY("emp_id") REFERENCES "Employee"("emp_id"),
	PRIMARY KEY("emp_id")
);
CREATE TABLE "Truck" (
	"truck_id"	NUMBER(8),
	"truck_vehicle_no"	VARCHAR2(20),
	"truck_license_no"	VARCHAR2(20),
	"truck_license_exp"	DATE,
	"truck_inspection_exp_date"	DATE,
	"emp_id"	NUMBER(8),
	PRIMARY KEY("truck_id"),
	FOREIGN KEY("emp_id") REFERENCES "Employee"("emp_id")
);
CREATE TABLE "Shipment" (
	"shipment_id"	NUMBER(8),
	"order_id"	NUMBER(8),
	"truck_id"	Number(8),
	"delivery_date"	DATE,
	PRIMARY KEY("shipment_id"),
	FOREIGN KEY("order_id") REFERENCES "Orders"("order_id"),
	FOREIGN KEY("truck_id") REFERENCES "Truck"("truck_id")
);
CREATE TABLE "Furniture" (
	"furn_id"	Number(8),
	"furn_type"	VARCHAR2(15),
	"furn_price"	NUMBER(10 , 2),
	"furn_qty"	NUMBER(4),
	PRIMARY KEY("furn_id")
);
CREATE TABLE "OrderDetails" (
	"order_id"	Number(10),
	"furn_id"	Number(8),
	PRIMARY KEY("order_id","furn_id")
);
