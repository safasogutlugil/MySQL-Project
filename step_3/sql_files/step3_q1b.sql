create view PFR1 as 
select P.Year, P.country_name as country, P.size as population, F.weight_t, ifnull(P.size/F.weight_t,0) as PFR
from population P, food F
where P.country_name = F.country_name and P.Year = F.year and F.weight_t != 0
and (ifnull(P.size/F.weight_t,0))>=0;

SELECT Year, Country, Population, weight_t, PFR
FROM PFR1
WHERE (Year, Country) NOT IN (SELECT Year, Country FROM PFR);

SELECT PFR1.Year, PFR1.Country, PFR1.Population, PFR1.weight_t, PFR1.PFR
FROM PFR1 
LEFT JOIN PFR ON PFR1.Year = PFR.Year AND PFR1.Country = PFR.Country
WHERE PFR.Year IS NULL AND PFR.Country IS NULL;