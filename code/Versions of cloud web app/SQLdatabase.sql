CREATE DATABASE shalakadb;
USE shalakadb;
CREATE TABLE Dcmotor_health(
					Motor_no double,
					Axis char(1),
                    Speed double,
                    Direction double,
                    Temperature double,
                    Vibration double, 
                    Current double, 
                    Voltage double, 
                    Actions char(7)
                    );
SELECT * FROM Dcmotor_health;	

LOAD DATA LOCAL INFILE 'C:\Users\HP\Documents\dcmotorfile.csv' 
INTO TABLE Dcmotor_health 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from Dcmotor_health;

CREATE TABLE Remo_Drive_Master(
					Model_no double,
					Description char(100),
                    DID double,
                    Actions char(7)
                    );
                    
LOAD DATA LOCAL INFILE 'C:\Users\HP\Documents\drivemaster.csv' 
INTO TABLE Remo_Drive_Master
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

select * from Remo_Drive_Master;
