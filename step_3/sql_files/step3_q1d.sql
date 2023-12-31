SELECT food.country_name, MAX(food.protein_g_per_capita * population.size / food.weight_t) as max_protein_grams_per_product_tonne
FROM food
JOIN population ON food.country_name = population.country_name AND food.year = population.year
GROUP BY food.country_name
HAVING max_protein_grams_per_product_tonne > 0
ORDER BY max_protein_grams_per_product_tonne DESC;

SELECT PFR.Country, MIN(PFR.PFR) AS Minimum_Ratio
FROM PFR
INNER JOIN food
ON PFR.Country = food.country_name
GROUP BY food.country_name
HAVING AVG(PFR.PFR) > 0;

SELECT pir.country_name, COUNT(*) AS num_years
FROM populationincreaserate pir
JOIN crops c ON pir.country_name = c.country_name AND pir.year_before = c.year
WHERE pir.increase_rate > 0 AND c.export_t < c.import_t
GROUP BY pir.country_name
HAVING num_years >= 10;

SELECT c.country_name, SUM(c.export_t) AS exports_sum, MAX(p.size) AS max_population
FROM crops AS c
JOIN population AS p ON p.country_name = c.country_name AND p.year = c.year
GROUP BY c.country_name
HAVING exports_sum > (SELECT AVG(total_exports) FROM (SELECT SUM(export_t) AS total_exports FROM crops GROUP BY country_name) AS avg_exports)
AND max_population < 100000000;

SELECT c.country_name, AVG(c.production_t) AS avg_production
FROM crops c
JOIN population p ON c.country_name = p.country_name AND c.year = p.year
GROUP BY c.country_name
HAVING  avg_production> 3312915;