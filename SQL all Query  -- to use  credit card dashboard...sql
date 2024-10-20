-- SQL all Query to create and import data from CSV File :
-- In this file I have use all the SQL Query / command to use in this Power-BI project for Data Preprocessing & DAX Queries..

-- 1. Create a one database in Postgre SQL:
	CREATE DATABASE cc_db
		
-- 2. Create a table: Table Name is credit card detail (cc_detail)
	CREATE TABLE cc_detail (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);

-- 3. Create a second table: for Table Name is customer_deatil (customer_detail)
	CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);

-- 3. Copy the csv data into postgresql :
	-- copy credit card.csv table
	
	COPY cc_detail)
	FROM 'path of your file\credit_card.csv' 
	DELIMITER ',' 
	CSV HEADER;

	-- copy customer_detail.csv table

	COPY customer_detail
	FROM 'path of your file\customer.csv' 
	DELIMITER ',' 
	CSV HEADER;

-- And run this query your csv files data will be copy..

-- 4. Connect & load the SQL database into Power-BI :

-- Additionally insert the data into SQL, using same COPY function...


	