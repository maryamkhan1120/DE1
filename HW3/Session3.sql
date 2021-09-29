Use birdstrikes;
-- Session 3
-- Exercise 1 
Select aircraft, airline, speed,
If (speed < 100 OR speed is null, 'LOW SPEED', 'HIGH SPEED') AS speed_category
from birdstrikes
order by speed_category;

-- DISTINCT
select count(*) from birdstrikes;
select count(reported_date) from birdstrikes;
select distinct state from birdstrikes;
Select count(distinct state) from birdstrikes;
-- Exercise 2 Answer: 3
Select count(distinct aircraft) from birdstrikes;

-- MAX, AVG, SUM
SELECT SUM(cost) FROM birdstrikes;

SELECT (AVG(speed)*1.852) as avg_kmh FROM birdstrikes;
SELECT DATEDIFF(MAX(reported_date),MIN(reported_date)) from birdstrikes;
select min(reported_date) from birdstrikes;
select max(reported_date) from birdstrikes;


-- Exercise 3 Answer: 9
select min(speed) from birdstrikes where aircraft like 'h%';


-- GROUP BY
SELECT MIN(speed), aircraft FROM birdstrikes GROUP BY aircraft;

-- Exercise 4 Answer: Taxi
select count(*) as count, phase_of_flight from birdstrikes group by phase_of_flight order by phase_of_flight desc;

-- Exercise 5 Answer: Climb=54673
select round(avg(cost)) as avg_cost, phase_of_flight from birdstrikes group by phase_of_flight order by round(avg(cost)) desc limit 1;
select * from birdstrikes;

-- HAVING
SELECT AVG(speed) AS avg_speed,state FROM birdstrikes GROUP BY state HAVING ROUND(avg_speed) = 50;

-- Exercise 6 Answer: Iowa=2862.5
select avg(speed) as avg_speed, state from birdstrikes group by state having length(state)<5 and state!="" order by avg_speed desc limit 1 ;


