delimiter //
CREATE PROCEDURE `get_production`(cname varchar(50))
BEGIN
	SELECT *
    FROM crops AS C
    WHERE C.country_name = cname;
END//
delimiter ;

CALL get_production("Turkey");
CALL get_production("Germany");