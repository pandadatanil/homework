CREATE SCHEMA IF NOT EXISTS "request311";

CREATE  TABLE "request311".dim_agency ( 
	agency_id            INT  NOT NULL  ,
	agency               VARCHAR(10)    ,
	CONSTRAINT pk_dim_agency PRIMARY KEY ( agency_id )
 );

CREATE  TABLE "request311".dim_channel ( 
	channel_id           INT  NOT NULL  ,
	open_data_channel_type VARCHAR(100)    ,
	CONSTRAINT pk_dim_open_data_channel_ PRIMARY KEY ( channel_id )
 );

CREATE  TABLE "request311".dim_complaint ( 
	complaint_id         INT  NOT NULL  ,
	complaint_type       VARCHAR(255)    ,
	CONSTRAINT pk_dim_complaint PRIMARY KEY ( complaint_id )
 );

CREATE  TABLE "request311".dim_date ( 
	date_id              INT  NOT NULL  ,
	date_iso_format      DATE    ,
	"year"               INT    ,
	"month"              INT    ,
	"day"                INT    ,
	"hour"               INT    ,
	"minute"             INT    ,
	CONSTRAINT pk_dim_date PRIMARY KEY ( date_id )
 );

CREATE  TABLE "request311".dim_location ( 
	location_id          INT  NOT NULL  ,
	city                 VARCHAR(100)    ,
	borough              VARCHAR(100)    ,
	street               VARCHAR(100)    ,
	zip                  VARCHAR(10)    ,
	latitude             DECIMAL(30,12)    ,
	longitude            DECIMAL(30,12)    ,
	CONSTRAINT pk_dim_location PRIMARY KEY ( location_id )
 );

CREATE  TABLE "request311".fact_request ( 
	fact_id               BIGINT  NOT NULL  ,
	created_date_id     INT  NOT NULL  ,
	closed_date_id       INT  NOT NULL  ,
	agency_id            INT  NOT NULL  ,
	complaint_id         INT  NOT NULL  ,
	location_id          INT  NOT NULL  ,
	channel_id           INT  NOT NULL  ,
	date_diff            INT  NOT NULL  ,
	CONSTRAINT pk PRIMARY KEY ( location_id, agency_id, complaint_id, channel_id, created__date_id, closed_date_id )
 );
