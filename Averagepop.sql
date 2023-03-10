--
-- https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
--
/*
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

select co.continent, trunc(avg(ci.population)) from
country co 
inner join city ci on co.code=ci.countrycode
group by co.continent;


