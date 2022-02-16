-- Create table Greenhouse_gas_emissions_per_kg 
-- create columns product_id, product, year, GHG_emissions_per_kg 
-- make product_id as a primary key not null auto increment 
-- import a data

CREATE TABLE greenhouse_gas_emissions_per_kg 
( 
   product_id TINYINT (4) NOT NULL AUTO_INCREMENT, 
   product VARCHAR (50) NOT NULL, 
   year INT (4) DEFAULT NULL, 
   GHG_emissions_per_kg DECIMAL (5,2) NOT NULL DEFAULT '0.00', 
   PRIMARY KEY (product_id) 
); 
   
 -- create table land_use_per_kg 
 -- create columns product_id, product, year, land_use_per_kg 
 -- make product_id foreign key and reference greenhouse_gas_emissions_per_kg (product_id) 
 -- import a data
 
 DROP TABLE IF EXISTS land_use_per_kg; 
 CREATE TABLE land_use_per_kg 
 ( 
   product_id TINYINT (4) NOT NULL, 
   product VARCHAR (50) NOT NULL, 
   year INT (4) DEFAULT NULL, 
   land_use_per_kg DECIMAL (5,2) NOT NULL DEFAULT '0.00', 
   PRIMARY KEY (product_id), 
   KEY FK_product_id (product_id), 
   CONSTRAINT FK_product_id FOREIGN KEY (product_id) 
   REFERENCES greenhouse_gas_emissions_per_kg (product_id) 
   ON DELETE RESTRICT ON UPDATE CASCADE
); 

 -- create table freshwater_withdrawals_per_kg 
 -- create columns product_id, product, year, freshwater_withdrawals_per_kg 
 -- make product_id foreign key and reference greenhouse_gas_emissions_per_kg (product_id) 
 -- import a data

CREATE TABLE freshwater_withdrawal_per_kg
( 
   product_id TINYINT (4) NOT NULL AUTO_INCREMENT, 
   product VARCHAR (50) NOT NULL, 
   year INT (4) DEFAULT NULL, 
   freshwater_withdrawal_per_kg DECIMAL (6,2) NOT NULL DEFAULT '0.00', 
   PRIMARY KEY (product), 
   CONSTRAINT FK_FW_product_id FOREIGN KEY (product_id) 
   REFERENCES greenhouse_gas_emissions_per_kg (product_id) 
   ON DELETE RESTRICT ON UPDATE CASCADE
); 

-- create table eutrophying_emissions_per_kg 
-- create columns product_id, product, year, eutrophying_emissions_per_kg 
-- make product_id foreign key and reference greenhouse_gas_emissions_per_kg
-- import a data 

CREATE TABLE eutrophying_emissions_per_kg 
( 
  product_id TINYINT (4) NOT NULL AUTO_INCREMENT, 
  product VARCHAR (50) NOT NULL, 
  year INT (4) DEFAULT NULL, 
  eutrophying_emissions_per_kg DECIMAL (6,2) NOT NULL DEFAULT '0.00', 
  PRIMARY KEY (product), 
  CONSTRAINT FK_ETR_product_id FOREIGN KEY (product_id) 
  REFERENCES greenhouse_gas_emissions_per_kg (product_id) 
  ON DELETE RESTRICT ON UPDATE CASCADE
); 

-- create table global_emissions_from_food_ch4
-- create columns gas_type, year, agricultural_production, end_of_life_food, 
-- packaging, retail, land_use, food_processing, consumption, transport 
-- import a data
   
CREATE TABLE global_emissions_from_food_ch4
( 
   gas_type VARCHAR (25) DEFAULT NULL, 
   year INT (4) NOT NULL, 
   agricultural_production VARCHAR (25) DEFAULT NULL, 
   end_of_life_food VARCHAR (25) DEFAULT NULL, 
   packaging VARCHAR (25) DEFAULT NULL, 
   retail VARCHAR (25) DEFAULT NULL, 
   land_use VARCHAR (25) DEFAULT NULL, 
   food_processing VARCHAR (25) DEFAULT NULL, 
   consumption VARCHAR (25) DEFAULT NULL, 
   transport VARCHAR (25) DEFAULT NULL, 
   PRIMARY KEY (year) 
); 

-- create table global_emissions_from_food_n2o
-- create columns gas_type, year, agricultural_production, end_of_life_food, 
-- packaging, retail, land_use, food_processing, consumption, transport 
-- import a data

CREATE TABLE global_emissions_from_food_n2o
(
  gas_type VARCHAR (25) DEFAULT NULL, 
  year INT (4) NOT NULL, 
  agricultural_production VARCHAR (25) DEFAULT NULL, 
   end_of_life_food VARCHAR (25) DEFAULT NULL, 
   packaging VARCHAR (25) DEFAULT NULL, 
   retail VARCHAR (25) DEFAULT NULL, 
   land_use VARCHAR (25) DEFAULT NULL, 
   food_processing VARCHAR (25) DEFAULT NULL, 
   consumption VARCHAR (25) DEFAULT NULL, 
   transport VARCHAR (25) DEFAULT NULL, 
   PRIMARY KEY (year) 
); 

-- create table global_emissions_from_food_co2
-- create columns gas_type, year, agricultural_production, end_of_life_food, 
-- packaging, retail, land_use, food_processing, consumption, transport 
-- insert values

CREATE TABLE global_emissions_from_food_co2
(
  gas_type VARCHAR (25) DEFAULT NULL, 
  year INT (4) NOT NULL, 
  agricultural_production VARCHAR (25) DEFAULT NULL, 
   end_of_life_food VARCHAR (25) DEFAULT NULL, 
   packaging VARCHAR (25) DEFAULT NULL, 
   retail VARCHAR (25) DEFAULT NULL, 
   land_use VARCHAR (25) DEFAULT NULL, 
   food_processing VARCHAR (25) DEFAULT NULL, 
   consumption VARCHAR (25) DEFAULT NULL, 
   transport VARCHAR (25) DEFAULT NULL, 
   PRIMARY KEY (year) 
); 
INSERT INTO global_emissions_from_food_co2
VALUES ('CO2', 1990, 819779593, 1881817, 480644388, 169771647, 6800775286, 309008672, 239547079, 449021922),
	   ('CO2', 1991, 822285620, 1929993, 488785004, 176985638, 6813224180, 309621179, 243133802, 455642508),
       ('CO2', 1992, 800751113, 2087574, 485289976, 180365107, 6833640272, 302257138, 238831828, 467235821), 
       ('CO2', 1993, 785915884, 2107628, 484640631, 185590467, 6879418108, 305299061, 243830788, 474837806), 
       ('CO2', 1994, 803915414, 2356424, 507160053, 192548297, 6892473766, 302642917, 240553575, 485450912), 
       ('CO2', 1995, 833223507, 2462395, 570928868, 200554632, 6911731532, 362763380, 256024554, 499284146), 
       ('CO2', 1996, 793623584, 2472394, 568254732, 212653782, 6418273612, 354136930, 239208862, 521774344), 
       ('CO2', 1997, 851192834, 2618634, 573378334, 219538102, 7361368893, 356310180, 258845455, 530823261), 
       ('CO2', 1998, 843431219, 2642581, 575017397, 220960876, 6829536795, 361743023, 241930613, 538482296), 
       ('CO2', 1999, 850958239, 2708398, 571315526, 227700630, 6493767044, 341206785, 245505413, 553763179), 
       ('CO2', 2000, 780362474, 3002220, 592134601, 228676161, 6339982039, 351828171, 252685041, 575920966), 
       ('CO2', 2001, 774454512, 2823986, 603932592, 238729237, 5876346232, 361717793, 257941579, 584694568), 
       ('CO2', 2002, 784021707, 2778705, 598399545, 239329013, 6809055933, 368273706, 261299680, 598497871), 
       ('CO2', 2003, 813728679, 2865381, 648459657, 250168757, 6478018385, 369924784, 272102971, 616663406), 
       ('CO2', 2004, 859347774, 2811097, 737391725, 258634681, 6786213736, 407978660, 283603022, 640179183), 
       ('CO2', 2005, 890541682, 2801022, 778697066, 268123148, 6537128836, 426479789, 291321418, 651863012), 
       ('CO2', 2006, 905489260, 2846481, 803238045, 271660203, 6378900703, 443090004, 295596443, 664679786), 
       ('CO2', 2007, 915553034, 2870724, 849940653, 286415119, 5895887112, 457756643, 304624617, 682026900),
       ('CO2', 2008, 912017784, 3119255, 863195782, 289855092, 5869189577, 465167784, 298981503, 684298866), 
       ('CO2', 2009, 902366938, 2866732, 848817028, 281488559, 6174114718, 457357530, 299265224, 677112319), 
       ('CO2', 2010, 923316235, 3080234, 870333448, 292474052, 5832511750, 463483758, 312482914, 702793019), 
       ('CO2', 2011, 948465234, 3128253, 925592999, 292908542, 5187965420, 465247802, 317651978, 712442188), 
       ('CO2', 2012, 953357662, 3368505, 892769436, 291819882, 5253230642, 460735843, 320587633, 734803220), 
       ('CO2', 2013, 970191273, 3424859, 895364383, 301664959, 5157058010, 459284130, 328638351, 745640937), 
       ('CO2', 2014, 989856102, 3397758, 913689310, 298753420, 5358269555, 442668646, 332311041, 757338149), 
       ('CO2', 2015, 985642478, 3435776, 901570506, 294782355, 5674576445, 436911272, 334857988, 771213548);

-- create table global_GHG_emissions_from_food_by_country 
-- this data allocates emissions to the countries where they are produced 
-- create columns country, year, emission_percentage 
-- import a data

DROP TABLE IF EXISTS global_GHG_emissions_from_food_by_country;
CREATE TABLE global_GHG_emissions_from_food_by_country 
(  country VARCHAR (100) NOT NULL, 
   year VARCHAR (10) NOT NULL, 
   emission_percentage DECIMAL (10,8) DEFAULT NULL
);

LOAD DATA INFILE 'D:\share-global-food-emissions.csv'
INTO TABLE global_ghg_emissions_from_food_by_country
FIELDS TERMINATED BY '.'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'; 

SHOW VARIABLES LIKE "secure_file_priv"; 

-- create table environmental_footprint_of_milk 
-- create columns product, year, land_use_m2, GHG_emissions, water_use, eutrophication 
-- insert values 

CREATE TABLE environmental_footprint_of_milk 
( 
  product VARCHAR (50) NOT NULL, 
  year int (4) DEFAULT NULL, 
  land_use_m2 DECIMAL (5,3) NOT NULL DEFAULT '0.00', 
  GHG_emissions DECIMAL (10,8) NOT NULL DEFAULT '0.00', 
  water_use DECIMAL (10,7) NOT NULL DEFAULT '0.00', 
  eutrophication DECIMAL (5,3) NOT NULL DEFAULT '0.00', 
  PRIMARY KEY (product)
  );
  
  INSERT INTO environmental_footprint_of_milk 
  VALUES ('Almon milk', 2013, 0.4963, 0.702077383, 371.4593343, 1.5029), 
		 ('Dairy milk', 2013, 8.95, 3.15, 628.2, 10.65), 
         ('Oat milk', 2013, 0.76, 0.903126194, 48.24, 1.6225), 
         ('Rice milk', 2013, 0.336, 1.181659182, 269.808, 4.6927), 
         ('Soy milk', 2013, 0.66, 0.98, 27.8, 1.06); 
  

-- create table beef_and_buffalo_meat_production_tonnes 
-- create columns code, country, year, livestock_tonnes
-- import a data 

DROP TABLE IF EXISTS beef_and_buffalo_meat_production_tonnes; 
CREATE TABLE beef_and_buffalo_meat_production_tonnes
( 
  code VARCHAR (5) DEFAULT NULL, 
  country VARCHAR (255) NOT NULL, 
  year INT (4) NOT NULL,
  livestock_tonnes VARCHAR (255) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (country)
);

-- create table mutton_meat_production_tonnes 
-- create columns code, country, year, livestock_tonnes
-- import a data 

DROP TABLE IF EXISTS mutton_meat_production_tonnes; 
CREATE TABLE mutton_meat_production_tonnes
( 
  code VARCHAR(5) DEFAULT NULL, 
  country VARCHAR (255) NOT NULL, 
  year INT (4) NOT NULL, 
  livestock_tonnes VARCHAR (255) NOT NULL DEFAULT '0.00', 
  PRIMARY KEY (country)
); 

-- create table cocoa_bean_production_tonnes 
-- create columns code, country, year, production_tonnes
-- import a data 

CREATE TABLE cocoa_bean_production_tonnes 
( 
  code VARCHAR (5) DEFAULT NULL, 
  country VARCHAR (255) NOT NULL, 
  year INT (4) NOT NULL, 
  production_tonnes VARCHAR (255) NOT NULL DEFAULT '0.00', 
  PRIMARY KEY (country)
); 
  
-- create table coffee_bean_production_tonnes 
-- create columns code, country, year, production_tonnes
-- import a data  

CREATE TABLE coffee_bean_production_tonnes 
( 
  code VARCHAR (5) DEFAULT NULL, 
  country VARCHAR (255) NOT NULL, 
  year INT (4) NOT NULL, 
  production_tonnes VARCHAR (255) NOT NULL DEFAULT '0.00', 
  PRIMARY KEY (country)
); 

-- create table cheese_production_tonnes 
-- create columns code, country, product, year, production_tonnes
-- import a data

DROP TABLE IF EXISTS cheese_production_tonnes; 
CREATE TABLE cheese_production_tonnes 
( 
  code VARCHAR (5) DEFAULT NULL, 
  country VARCHAR (255) NOT NULL, 
  product VARCHAR (255) NOT NULL, 
  year INT (4) NOT NULL,
  production_tonnes VARCHAR (255) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (country) 
); 
 
-- create table dairy_product_production_tonnes 
-- create columns code, country, year, production_tonnes
-- import a data

CREATE TABLE dairy_product_production_tonnes 
( 
  code VARCHAR (5) DEFAULT NULL, 
  country VARCHAR (255) NOT NULL, 
  year INT (4) NOT NULL, 
  production_tonnes VARCHAR (255) NOT NULL DEFAULT '0.00', 
  PRIMARY KEY (country)
); 


-- select top 5 products that have the highest GHG emission index
-- select top 5 products that have the lowest GHG emission index

SELECT * 
FROM greenhouse_gas_emissions_per_kg
ORDER BY GHG_emissions_per_kg DESC 
LIMIT 5;

SELECT * 
FROM greenhouse_gas_emissions_per_kg
ORDER BY GHG_emissions_per_kg  
LIMIT 5;

-- select top 5 products that have the highest land use index
-- select top 5 products that have the lowest  land use index

SELECT * 
FROM land_use_per_kg
ORDER BY land_use_per_kg DESC 
LIMIT 5; 

SELECT * 
FROM land_use_per_kg
ORDER BY land_use_per_kg  
LIMIT 5; 

-- select top 5 products that have the highest freshwater use index
-- select top 5 products that have the lowest  freshwater use index

SELECT * 
FROM freshwater_withdrawal_per_kg
ORDER BY freshwater_withdrawal_per_kg DESC 
LIMIT 5; 

SELECT * 
FROM freshwater_withdrawal_per_kg
ORDER BY freshwater_withdrawal_per_kg  
LIMIT 5; 

-- select top 5 products that have the highest eutrophying emission index
-- select top 5 products that have the lowest eutrophying emission index

SELECT * 
FROM eutrophying_emissions_per_kg
ORDER BY eutrophying_emissions_per_kg DESC 
LIMIT 5;

SELECT * 
FROM eutrophying_emissions_per_kg
ORDER BY eutrophying_emissions_per_kg  
LIMIT 5;

-- calculate the max and min indexes for greenhouse_gas_emissions_per_kg and combine them
-- create a view 

CREATE VIEW max_min_indexes_of_GHG_per_kg AS
SELECT *
FROM greenhouse_gas_emissions_per_kg
WHERE GHG_emissions_per_kg in 
(
  SELECT MAX(GHG_emissions_per_kg)
  FROM greenhouse_gas_emissions_per_kg)
UNION
SELECT *
FROM greenhouse_gas_emissions_per_kg
WHERE GHG_emissions_per_kg in 
(
  SELECT MIN(GHG_emissions_per_kg)
  FROM greenhouse_gas_emissions_per_kg); 
  

-- calculate the difference between MAX and MIN indexes in percentage 

SELECT v1.product,
       v1.GHG_emissions_per_kg,
       v2.product,
       v2.GHG_emissions_per_kg,
      ROUND((max(V1.ghg_emissions_per_kg) - min(V1.ghg_emissions_per_kg)) / ((max(V1.ghg_emissions_per_kg) + min(V1.ghg_emissions_per_kg)) / 2) * 100) 
      AS diff_in_percentage 
FROM max_min_indexes_of_ghg_per_kg V1
JOIN max_min_indexes_of_ghg_per_kg V2;


-- calculate the average index of ghg_emissions_per_kg and select products that have a higher indicator 

SELECT
      TRUNCATE(avg(ghg_emissions_per_kg), 2) AS average_emission_per_kg 
FROM greenhouse_gas_emissions_per_kg;


SELECT *
FROM greenhouse_gas_emissions_per_kg
WHERE GHG_emissions_per_kg >
   ( SELECT 
	 AVG (GHG_emissions_per_kg)
     FROM greenhouse_gas_emissions_per_kg);


-- calculate the max and min indexes for land_use_per_kg and combine them
-- create a view 

CREATE VIEW max_min_indexes_of_land_use_per_kg AS
SELECT * 
FROM land_use_per_kg
WHERE land_use_per_kg IN 
 ( 
  SELECT MAX(land_use_per_kg)
  FROM land_use_per_kg)
UNION 
SELECT *
FROM land_use_per_kg
WHERE land_use_per_kg IN 
  ( 
    SELECT MIN(land_use_per_kg)
    FROM land_use_per_kg); 
    
    
-- calculate the difference between MAX and MIN indexes in percentage 

SELECT v1.product, 
       v1.land_use_per_kg, 
       v2.product, 
       v2.land_use_per_kg,
      TRUNCATE((max(v1.land_use_per_kg) - min(v1.land_use_per_kg)) / ((max(v1.land_use_per_kg) + min(v1.land_use_per_kg)) / 2) * 100, 1) 
      AS diff_in_percentage
FROM max_min_indexes_of_land_use_per_kg v1 
JOIN max_min_indexes_of_land_use_per_kg v2;


-- calculate the average index of land_use_per_kg and select products that have a higher indicator 

SELECT 
     TRUNCATE(AVG (land_use_per_kg), 2) AS average_land_use_per_kg
FROM land_use_per_kg;

SELECT *
FROM land_use_per_kg
WHERE land_use_per_kg > 
(  
  SELECT AVG (land_use_per_kg) 
  FROM land_use_per_kg
); 


-- calculate the max and min indexes for freshwater_withdrawal_per_kg and combine them
-- create a view 

CREATE VIEW max_min_indexes_of_freshwater_withdrawal_per_kg AS 
SELECT *
FROM freshwater_withdrawal_per_kg
WHERE freshwater_withdrawal_per_kg IN 
    (SELECT max(freshwater_withdrawal_per_kg)
    FROM freshwater_withdrawal_per_kg)
UNION
SELECT *
FROM freshwater_withdrawal_per_kg
WHERE freshwater_withdrawal_per_kg IN 
    (SELECT min(freshwater_withdrawal_per_kg)
    FROM freshwater_withdrawal_per_kg
    WHERE product <> 'cassava');


-- calculate the difference between MAX and MIN indexes in percentage 

SELECT v1.product, 
       v1.freshwater_withdrawal_per_kg, 
       v2.product,
       v2.freshwater_withdrawal_per_kg,
       TRUNCATE((max(v1.freshwater_withdrawal_per_kg) - min(v1.freshwater_withdrawal_per_kg)) / 
       ((max(v1.freshwater_withdrawal_per_kg) + min(v1.freshwater_withdrawal_per_kg)) / 2) * 100, 1)
       AS diff_in_percentage
FROM max_min_indexes_of_freshwater_withdrawal_per_kg v1
JOIN max_min_indexes_of_freshwater_withdrawal_per_kg v2;


-- calculate the average index of freshwater_withdrawal_per_kg and select products that have a higher indicator 

SELECT TRUNCATE(AVG(freshwater_withdrawal_per_kg), 2) AS average_freshwater_withdrawal_per_kg
FROM freshwater_withdrawal_per_kg; 

SELECT *
FROM freshwater_withdrawal_per_kg
WHERE freshwater_withdrawal_per_kg > 
( 
  SELECT AVG(freshwater_withdrawal_per_kg)
  FROM freshwater_withdrawal_per_kg);
  
  
-- calculate the max and min indexes for eutrophying_emissions_per_kg and combine them
-- create a view 

DROP VIEW IF EXISTS max_min_indexes_eutrophying_emissions_per_kg;
CREATE VIEW max_min_indexes_of_eutrophying_emissions_per_kg AS 
SELECT * 
FROM eutrophying_emissions_per_kg
WHERE eutrophying_emissions_per_kg IN 
( 
   SELECT max(eutrophying_emissions_per_kg)
   FROM eutrophying_emissions_per_kg
)
UNION
SELECT *
FROM eutrophying_emissions_per_kg
WHERE eutrophying_emissions_per_kg IN
( 
  SELECT min(eutrophying_emissions_per_kg)
  FROM eutrophying_emissions_per_kg
); 


-- calculate the difference between MAX and MIN indexes in percentage 

SELECT v1.product, 
       v1.eutrophying_emissions_per_kg, 
       v2.product,
       v2.eutrophying_emissions_per_kg,
       TRUNCATE((max(v1.eutrophying_emissions_per_kg) - min(v1.eutrophying_emissions_per_kg)) / 
       ((max(v1.eutrophying_emissions_per_kg) + min(v1.eutrophying_emissions_per_kg)) / 2) * 100, 1)
       AS diff_in_percentage
FROM max_min_indexes_of_eutrophying_emissions_per_kg v1
JOIN max_min_indexes_of_eutrophying_emissions_per_kg v2; 


-- calculate the average index of eutrophying_emissions_per_kg and select products that have a higher indicator 

SELECT 
      TRUNCATE(AVG(eutrophying_emissions_per_kg), 2) AS average_eutrophying_emissions_per_kg
FROM eutrophying_emissions_per_kg; 

SELECT * 
FROM eutrophying_emissions_per_kg
WHERE eutrophying_emissions_per_kg > 
( 
  SELECT AVG(eutrophying_emissions_per_kg) 
  FROM eutrophying_emissions_per_kg 
); 

-- select countries with the highest index of beef and buffalo meat production 
-- filter countries from continents 

SELECT * 
FROM beef_and_buffalo_meat_production_tonnes
WHERE code IS NOT NULL 
ORDER BY cast(livestock_tonnes as unsigned) DESC; 

-- select continents with the highest index of beef and buffalo meat production 

SELECT * 
FROM beef_and_buffalo_meat_production_tonnes
WHERE code IS NULL 
ORDER BY cast(livestock_tonnes as unsigned) DESC; 

-- select countries with the highest index of mutton meat production 
-- filter countries from continents 

SELECT *
FROM mutton_meat_production_tonnes
WHERE code IS NOT NULL 
ORDER BY cast(livestock_tonnes AS unsigned) DESC; 

-- select continents with the highest index of mutton meat production 

SELECT *
FROM mutton_meat_production_tonnes
WHERE code IS NULL 
ORDER BY cast(livestock_tonnes AS unsigned) DESC; 

-- select countries with the highest index of cocoa bean production 
-- filter countries from continents 

SELECT * 
FROM cocoa_bean_production_tonnes
WHERE code IS NOT NULL 
ORDER BY cast(production_tonnes AS unsigned) DESC;

-- select continents with the highest index of cocoa beans production 

SELECT * 
FROM cocoa_bean_production_tonnes
WHERE code IS NULL 
ORDER BY cast(production_tonnes AS unsigned) DESC;

-- select countries with the highest index of coffee beans production 
-- filter countries from continents 

SELECT * 
FROM coffee_bean_production_tonnes
WHERE code IS NOT NULL 
ORDER BY cast(production_tonnes AS unsigned) DESC;

-- select continents with the highest index of coffee beans production 

SELECT * 
FROM coffee_bean_production_tonnes
WHERE code IS NULL 
ORDER BY cast(production_tonnes AS unsigned) DESC;

-- select countries with the highest index of cheese production 
-- filter countries from continents 

SELECT * 
FROM cheese_production_tonnes
WHERE code IS NOT NULL 
ORDER BY cast(production_tonnes AS unsigned) DESC; 

-- select continents with the highest index of cheese production 

SELECT * 
FROM cheese_production_tonnes
WHERE code IS NULL 
ORDER BY cast(production_tonnes AS unsigned) DESC; 

-- select countries with the highest index of dairy product production 
-- filter countries from continents 

SELECT * 
FROM dairy_product_production_tonnes
WHERE code IS NOT NULL 
ORDER BY cast(production_tonnes AS unsigned) DESC; 

-- select continents with the highest index of dairy product production 

SELECT * 
FROM dairy_product_production_tonnes
WHERE code IS NULL 
ORDER BY cast(production_tonnes AS unsigned) DESC; 