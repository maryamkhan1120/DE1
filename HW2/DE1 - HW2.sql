-- Exercise 1 
drop table if exists employee;
create table employee
(id Integer not null, employee_name varchar(255) not null, primary key(id));

Select * from employee;

-- Exercise 2 Answer: Tennessee
Use birdstrikes;
select state from birdstrikes limit 144, 1;

-- Exercise 3 Answer: 2000-04-18
select flight_date from birdstrikes order by flight_date desc limit 1;

-- Exercise 4 Answer: 5345
select distinct cost from birdstrikes order by cost desc limit 49, 1;


-- Exercise 5; Answer: Colorado
select distinct state from birdstrikes where state is not null and state != '' and bird_size is not null and state != '' ;


-- Exercise 6; Answer: 7936 days
select * from birdstrikes;
select flight_date, state from birdstrikes where state = 'colorado' and weekofyear(flight_date)=52;
select now();

select datediff(now(), (select flight_date from birdstrikes where state = 'colorado' and weekofyear(flight_date)=52));