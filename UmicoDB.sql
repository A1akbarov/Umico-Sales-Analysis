CREATE DATABASE umicoDB;
USE umicoDB;
-----load data from xlsx file-----
select * from umicoSales;

ALTER TABLE umicoSales ADD type_of_discount VARCHAR(10); 

UPDATE umicoSales
SET type_of_discount = 
    CASE 
        WHEN discount_percentage >= 50 THEN 'Yüksek'
        WHEN discount_percentage < 50 AND discount_percentage >= 30 THEN 'Orta'
        WHEN discount_percentage < 30  THEN 'Asagi'
    END;

select type_of_discount
from umicoSales;


ALTER TABLE umicoSales ADD type_of_loan VARCHAR(20);
SELECT DISTINCT loan_duration from umicoSales;

UPDATE umicoSales
SET type_of_loan = 
    CASE 
        WHEN loan_duration=0    THEN 'Yalniz Nağd ödeniş'
        WHEN loan_duration =6   THEN '6 ay'
        WHEN loan_duration =9   THEN '9 ay'
		WHEN loan_duration = 12 THEN '12 ay'
		WHEN loan_duration =18  THEN '18 ay'
		WHEN loan_duration = 24 THEN '24 ay'
    END;

select type_of_loan
from umicoSales;

select * from umicoSales;