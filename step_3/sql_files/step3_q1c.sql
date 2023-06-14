SELECT scw.country_name, scw.year, scw.weight_t AS SupplyChainWaste_t
FROM supply_chain_waste scw
WHERE EXISTS (SELECT * FROM crops c
   			 WHERE c.export_t > c.import_t AND scw.country_name = c.country_name
            	AND scw.year = c.year);


SELECT scw.country_name, scw.year, scw.weight_t AS SupplyChainWaste_t
FROM supply_chain_waste scw
WHERE scw.country_name IN (SELECT c.country_name FROM crops c
   			 WHERE c.export_t > c.import_t AND scw.year = c.year);