CREATE SCHEMA INSTANCE;

CREATE TABLE `311_dw_lgl`.INSTANCE.dim_date ( 
	date_id int64 NOT NULL  
 );

ALTER TABLE `311_dw_lgl`.INSTANCE.dim_date ADD PRIMARY KEY ( date_id )  NOT ENFORCED;

CREATE TABLE `311_dw_lgl`.INSTANCE.dim_location ( 
	location_id int64 NOT NULL  ,
	borough string  ,
	latitude bignumeric  
 );

ALTER TABLE `311_dw_lgl`.INSTANCE.dim_location ADD PRIMARY KEY ( location_id )  NOT ENFORCED;

CREATE TABLE `311_dw_lgl`.INSTANCE.facts_request ( 
	factid int64 NOT NULL  ,
	complaint_type string  ,
	created__date date  ,
	closed_date date  ,
	location_id int64 NOT NULL  ,
	date_id int64 NOT NULL  
 );

ALTER TABLE `311_dw_lgl`.INSTANCE.facts_request ADD PRIMARY KEY ( factid, location_id )  NOT ENFORCED;