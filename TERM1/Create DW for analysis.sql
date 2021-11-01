
-- ETL to create DataWarehouse
DROP PROCEDURE IF EXISTS ETL_Data_Warehouse;
DROP TABLE IF EXISTS dw_weedprice;
DELIMITER //
create procedure ETL_Data_Warehouse()
BEGIN
	DROP TABLE IF EXISTS dw_weedprice;
Create table dw_weedprice

SELECT  wp.id,
wp.state,
wp.year, 
wp.high_quality, 
wp.medium_quality, 

d.total_pop, d.white_perc, 
d.black_perc, 
d.asian_perc, 
d.hispanic_perc, 
d.median_age, 
d.median_rent, 
d.per_capita_income,

s.state_abr,
s.weedstatus
from weed_price wp
inner join demographic_state d using (state)
inner join state_location s using (state)

    ;
    
END //
DELIMITER ;

Call ETL_Data_Warehouse;
    