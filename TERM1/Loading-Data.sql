create schema term_project1;
Use term_project1;

-- Create Weed Price table
drop table if exists weed_price;
create table weed_price
(id int not null auto_increment,
state varchar(150),
high_quality integer,
high_qn integer,
medium_quality integer,
medium_qn integer,
low_quality integer,
low_qn integer,
collection_date date,
year integer,
primary key(id));

-- Load Weed Price table
LOAD DATA INFILE '/Users/maryamkhan/DE1 - Term Project/Weed_Price.csv' 
INTO TABLE weed_price 
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n' 
IGNORE 1 LINES
(state, high_quality, high_qn, medium_quality, medium_qn, @v_low_quality, low_qn, collection_date, year)
SET
low_quality = nullif(@v_low_quality, '');


-- Create State Location table
drop table if exists state_location;
create table state_location
(state varchar(150),
state_abr varchar(150),
latitude integer,
longitude integer,
weedstatus varchar(150),
primary key(state));

-- Load State Location table
LOAD DATA INFILE '/Users/maryamkhan/DE1 - Term Project/State_Location.csv' 
INTO TABLE state_location 
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n' 
IGNORE 1 LINES
(state, state_abr, latitude, longitude, weedstatus);


-- Create Demographic State table
drop table if exists demographic_state;
create table demographic_state
(state varchar(150),
total_pop integer,
white_perc integer,
black_perc integer,
asian_perc integer,
hispanic_perc integer,
per_capita_income integer,
median_rent integer,
median_age integer,
primary key(state));

-- Load Demographic State table
LOAD DATA INFILE '/Users/maryamkhan/DE1 - Term Project/Demographics_State.csv' 
INTO TABLE demographic_state 
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n' 
IGNORE 1 LINES
(state, total_pop, white_perc, black_perc, asian_perc, hispanic_perc, per_capita_income, median_rent, median_age);

-- Create State Location table
drop table if exists state_location;
create table state_location
(state varchar(150),
state_abr varchar(150),
latitude integer,
longitude integer,
weedstatus varchar(150),
primary key(state));

-- Load State Location table
LOAD DATA INFILE '/Users/maryamkhan/DE1 - Term Project/State_Location.csv' 
INTO TABLE state_location 
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n' 
IGNORE 1 LINES
(state, state_abr, latitude, longitude, weedstatus);



