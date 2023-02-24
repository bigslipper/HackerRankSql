/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
/*

https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true

select city,count(city) 
from station
group by city
having count(city)>1
order by city;

*/

select tot1.tot-tot2.tot2
from (
select count(city) as tot 
from station) tot1,
(select count(cc) as tot2 from 
    (select city as cc from station group by city) 
) tot2;
