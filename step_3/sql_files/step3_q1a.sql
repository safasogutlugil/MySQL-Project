CREATE VIEW ExportToProductRatio as
SELECT c.country_name AS country, c.year, c.production_t AS production, c.export_t AS export,
(c.export_t / c.production_t) AS export_to_production_ratio
FROM crops as c
WHERE (c.export_t / c.production_t) >= 0.5 AND (c.export_t / c.production_t) <= 1;

CREATE VIEW countries_above_avg_production AS
SELECT p.country_name, p.year, c.production_t / p.size AS production_per_person
FROM population p
JOIN crops c ON p.country_name = c.country_name AND p.year = c.year
WHERE c.production_t / p.size > (
  SELECT AVG(production_t / size)
  FROM crops
  JOIN population ON crops.country_name = population.country_name AND crops.year = population.year
);

create view PFR as
select P.Year, P.country_name as country, P.size as population, F.weight_t, ifnull(P.size/F.weight_t,0) as PFR
from population P, food F
where P.country_name = F.country_name and P.Year = F.year and F.weight_t != 0
and (ifnull(P.size/F.weight_t,0))>50;

CREATE VIEW waste_to_production_ratio AS
SELECT s.country_name, SUM(s.weight_t) AS supply_chain_waste, SUM(c.production_t) AS production, SUM(s.weight_t)/SUM(c.production_t) AS waste_to_production_ratio 
FROM supply_chain_waste AS s
JOIN crops AS c ON c.country_name = s.country_name AND c.year = s.year
WHERE s.weight_t IS NOT NULL AND
c.production_t IS NOT NULL AND
s.weight_t/c.production_t IS NOT NULL AND
s.weight_t/c.production_t < 1
GROUP BY s.country_name;

CREATE VIEW PopulationIncreaseRate AS
SELECT
  p1.country_name,
  p2.year AS year_before,
  p2.size AS population_before,
  p1.year AS year_after,
  p1.size AS population_afterpopulationincreaserate,
  CONCAT((CAST(p1.size AS SIGNED) - CAST(p2.size AS SIGNED)) / CAST(p2.size AS SIGNED) * 100, '%') as increase_rate
FROM
  population p1
  JOIN population p2
    ON p1.country_name = p2.country_name AND p1.year = p2.year + 1;