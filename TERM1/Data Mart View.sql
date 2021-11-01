
select * from dw_weedprice;	
-- Is the price of weed affected by race?

DROP VIEW IF EXISTS price_race_analysis;
CREATE VIEW `price_race_analysis` AS
SELECT id, state, state_abr, avg_highp, avg_medp white_perc, black_perc, asian_perc, hispanic_perc FROM dw_weedprice
order by avg_highp desc;


-- Is the price of weed affected by the legal status weed in a specific state?

DROP VIEW IF EXISTS legal_status_weed;
CREATE VIEW `legal_status_weed` AS
SELECT id, state, state_abr, avg_highp, avg_medp, weedstatus FROM dw_weedprice
order by avg_highp desc;

-- Is the price of weed affected by the average income and rent of the state?

DROP VIEW IF EXISTS income_rent_weed;
CREATE VIEW `income_rent_weed` AS
SELECT id, state, state_abr, per_capita_income, median_rent, avg_highp, avg_medp FROM dw_weedprice
order by per_capita_income desc;

-- In 2015 how the price of weed in different states varied according to the race? (Using this view to calculate the difference between years)
DROP VIEW IF EXISTS 2015_price_race;
CREATE VIEW `2015_price_race` AS
SELECT state, 
state_abr, 
year, 
avg(white_perc) as avg_white_perc, 
avg(black_perc) as avg_black_perc, 
avg(asian_perc) as avg_asian_perc, 
avg(hispanic_perc)as avg_hispanic_perc, 
avg(high_quality)as avg_highp, 
avg(medium_quality) as avg_medp 
FROM dw_weedprice
where year = 2015
group by state, state_abr;


-- In 2014 how the price of weed in different states varied according to the race? (Using this view to calculate the difference between years)
DROP VIEW IF EXISTS 2014_price_race;
CREATE VIEW `2014_price_race` AS
SELECT state, 
state_abr, 
year,
avg(white_perc) as avg_white_perc, 
avg(black_perc) as avg_black_perc, 
avg(asian_perc) as avg_asian_perc, 
avg(hispanic_perc)as avg_hispanic_perc, 
avg(high_quality)as avg_highp, 
avg(medium_quality) as avg_medp 
FROM dw_weedprice
where year = 2014
group by state, state_abr;

-- price difference in 2015 and 2014 as compared to race?
DROP VIEW IF EXISTS difference_2015_2014;
CREATE VIEW `difference_2015_2014` AS
SELECT n.state, 
n.state_abr, 
n.avg_white_perc, 
n.avg_black_perc, 
n.avg_asian_perc, 
n.avg_hispanic_perc, 
(n.avg_highp - m.avg_highp) as highp_diff, 
(n.avg_medp - m.avg_medp) as medp_diff
FROM 2015_price_race n
inner join 2014_price_race m
using (state)
order by highp_diff desc;