CREATE SCHEMA INSTANCE;

CREATE TABLE `311_dw_lgl`.INSTANCE.Dim_Agency ( 
	Agency_ID int64 NOT NULL  ,
	Agency_Acronym string  ,
	Agency_Name string  
 );

ALTER TABLE `311_dw_lgl`.INSTANCE.Dim_Agency ADD PRIMARY KEY ( Agency_ID )  NOT ENFORCED;

CREATE TABLE `311_dw_lgl`.INSTANCE.Dim_Complaint ( 
	Complaint_ID int64 NOT NULL  ,
	Complaint_Type string  ,
	Descriptor string  
 );

ALTER TABLE `311_dw_lgl`.INSTANCE.Dim_Complaint ADD PRIMARY KEY ( Complaint_ID )  NOT ENFORCED;

CREATE TABLE `311_dw_lgl`.INSTANCE.Dim_Open_Data_Channel ( 
	Open_Data_Channel_Type_ID int64 NOT NULL  ,
	Open_Data_Channel_Type string  
 );

ALTER TABLE `311_dw_lgl`.INSTANCE.Dim_Open_Data_Channel ADD PRIMARY KEY ( Open_Data_Channel_Type_ID )  NOT ENFORCED;

CREATE TABLE `311_dw_lgl`.INSTANCE.Dim_Vehicle ( 
	Vehicle_ID int64 NOT NULL  ,
	Vehicle_Type string  
 );

ALTER TABLE `311_dw_lgl`.INSTANCE.Dim_Vehicle ADD PRIMARY KEY ( Vehicle_ID )  NOT ENFORCED;

CREATE TABLE `311_dw_lgl`.INSTANCE.dim_date ( 
	date_id int64 NOT NULL  ,
	DateOriginalFormat date  ,
	DateIsoformat date  ,
	year int64  ,
	monthNumber int64  ,
	quarter date  ,
	dayNumber date  ,
	dayName string  ,
	monthName string  ,
	hournumber int64  
 );

ALTER TABLE `311_dw_lgl`.INSTANCE.dim_date ADD PRIMARY KEY ( date_id )  NOT ENFORCED;

CREATE TABLE `311_dw_lgl`.INSTANCE.dim_location ( 
	location_id int64 NOT NULL  ,
	Location_Type string  ,
	ZIP string  ,
	Address string  ,
	Street_Name string  ,
	Cross_Street_1 string  ,
	Cross_Street_2 string  ,
	Intersection_Street_1 string  ,
	Intersection_Street_2 string  ,
	Address_Type string  ,
	City string  ,
	Landmark string  ,
	Facility_Type string  ,
	Community_Board string  ,
	BBL string  ,
	X_Coordinate_(State_Plane) string  ,
	Y_Coordinate_(State_Plane) string  ,
	Park_Facility_Name string  ,
	Park_Borough string  ,
	Bridge_Highway_Name string  ,
	Bridge_Highway_Direction string  ,
	Road_Ramp string  ,
	Bridge_Highway_Segment string  ,
	latitude bignumeric  ,
	longitude bignumeric  ,
	Location string  
 );

ALTER TABLE `311_dw_lgl`.INSTANCE.dim_location ADD PRIMARY KEY ( location_id )  NOT ENFORCED;

CREATE TABLE `311_dw_lgl`.INSTANCE.fact_request ( 
	factid int64 NOT NULL  ,
	created__date date NOT NULL  ,
	closed_date date NOT NULL  ,
	Agency_ID int64 NOT NULL  ,
	Complaint_ID int64 NOT NULL  ,
	Status string  ,
	Due_Date date NOT NULL  ,
	location_id int64 NOT NULL  ,
	Open_Data_Channel_Type_ID int64 NOT NULL  ,
	Vehicle_ID int64 NOT NULL  
 );

ALTER TABLE `311_dw_lgl`.INSTANCE.fact_request ADD PRIMARY KEY ( factid, location_id, Agency_ID, Complaint_ID, Open_Data_Channel_Type_ID, Vehicle_ID, created__date, closed_date, Due_Date )  NOT ENFORCED;
