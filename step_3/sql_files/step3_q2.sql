ALTER TABLE supply_chain_waste
ADD CONSTRAINT chk_weight_t_range_of_supply_chain_waste
CHECK (weight_t >= 0 AND weight_t <= 19111000);

insert into supply_chain_waste(country_name, year, weight_t) values ('Afghanistan', 1944, -12);

DROP TRIGGER IF EXISTS trigger_before_insert_scw;
DROP TRIGGER IF EXISTS trigger_before_update_scw;

set @max_weight = (SELECT MAX(weight_t) FROM supply_chain_waste);
set @min_weight = (SELECT MIN(weight_t) FROM supply_chain_waste);

DELIMITER //
CREATE TRIGGER trigger_before_insert_scw
BEFORE INSERT ON supply_chain_waste
FOR EACH ROW
BEGIN
	IF NEW.weight_t < @min_weight THEN
		SET NEW.weight_t = @min_weight;
	END IF;
	IF NEW.weight_t > @max_weight THEN
		SET NEW.weight_t = @max_weight;
	END IF;
END//
DELIMITER ;


DELIMITER //
CREATE TRIGGER trigger_before_update_scw
BEFORE UPDATE ON supply_chain_waste
FOR EACH ROW
BEGIN
	IF NEW.weight_t < @min_weight THEN
		SET NEW.weight_t = @min_weight;
	END IF;
	IF NEW.weight_t > @max_weight THEN
		SET NEW.weight_t = @max_weight;
	END IF;
END//
DELIMITER ;

insert into supply_chain_waste(country_name, year, weight_t) values ('Afghanistan', 1944, -12); 

select *
from supply_chain_waste as s
where s.country_name = "Afghanistan" and s.year = 1944