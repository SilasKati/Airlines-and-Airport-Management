-- Airlines Database Project --
-- By: Group 4 --
-- Members: Silas, Midhun, Kavya, Madhuresh --

-- Creating AIRPORT Table --

CREATE TABLE AIRPORT
(AP_NAME VARCHAR2(100) NOT NULL,
STATE VARCHAR2(15), 
COUNTRY VARCHAR(30),
CNAME VARCHAR2(15),
PRIMARY KEY(AP_NAME));

--Insering values for Table: AIRPORT--

INSERT INTO AIRPORT (AP_NAME, STATE, COUNTRY, CNAME) VALUES('Louisville International Airport','Kentucky','United States','Louisville');
INSERT INTO AIRPORT (AP_NAME, STATE, COUNTRY, CNAME) VALUES('Chandigarh International Airport','Chandigarh','India','Chandigarh');
INSERT INTO AIRPORT (AP_NAME, STATE, COUNTRY, CNAME) VALUES('Dallas/Fort Worth International Airport','Texas','United States','Fort Worth');
INSERT INTO AIRPORT (AP_NAME, STATE, COUNTRY, CNAME) VALUES('Indira GandhiInternational Airport','Delhi','India','Delhi');
INSERT INTO AIRPORT (AP_NAME, STATE, COUNTRY, CNAME) VALUES('Chhatrapati Shivaji International Airport','Maharashtra','India','Mumbai');
INSERT INTO AIRPORT (AP_NAME, STATE, COUNTRY, CNAME) VALUES('San Francisco International Airport','California', 'United States','San Francisco');
INSERT INTO AIRPORT (AP_NAME, STATE, COUNTRY, CNAME) VALUES('Frankfurt Airport','Hesse','Germany','Frankfurt');
INSERT INTO AIRPORT (AP_NAME, STATE, COUNTRY, CNAME) VALUES('George Bush Intercontinental Airport','Texas','United States','Houston');
INSERT INTO AIRPORT (AP_NAME, STATE, COUNTRY, CNAME) VALUES('John F. Kennedy International Airport','New York','United States','New York City');
INSERT INTO AIRPORT (AP_NAME, STATE, COUNTRY, CNAME) VALUES('Tampa International Airport','Florida', 'United States','Tampa');

-- Checking values insertion --

SELECT *
FROM AIRPORT;


-- Creating AIRLINE Table --

CREATE TABLE AIRLINE
(AIRLINEID VARCHAR(3) NOT NULL,
AL_NAME VARCHAR2(50),
THREE_DIGIT_CODE VARCHAR(3),
PH INT,
PRIMARY KEY(AIRLINEID));

-- Insering values for Table: AIRLINE --

INSERT INTO AIRLINE (AIRLINEID, AL_NAME, THREE_DIGIT_CODE, PH) VALUES('AA','American Airlines','001', 1800123456);
INSERT INTO AIRLINE (AIRLINEID, AL_NAME, THREE_DIGIT_CODE, PH) VALUES('AI','Air India Limited','098', 1800234567);
INSERT INTO AIRLINE (AIRLINEID, AL_NAME, THREE_DIGIT_CODE, PH) VALUES('LH','Lufthansa', '220', 1800345678);
INSERT INTO AIRLINE (AIRLINEID, AL_NAME, THREE_DIGIT_CODE, PH) VALUES('BA','British Airways','125', 1800456789);
INSERT INTO AIRLINE (AIRLINEID, AL_NAME, THREE_DIGIT_CODE, PH) VALUES('QR','Qatar Airways','157', 1800987654);
INSERT INTO AIRLINE (AIRLINEID, AL_NAME, THREE_DIGIT_CODE, PH) VALUES('9W','Jet Airways','589', 1800876543);
INSERT INTO AIRLINE (AIRLINEID, AL_NAME, THREE_DIGIT_CODE, PH) VALUES('EK','Emirates','176', 1800765432);
INSERT INTO AIRLINE (AIRLINEID, AL_NAME, THREE_DIGIT_CODE, PH) VALUES('EY','Ethiad Airways','607', 1800654321);

-- Checking values insertion --

SELECT *
FROM AIRLINE;


-- Creating CONTAINS Table --

CREATE TABLE CONTAINS
(AIRLINEID VARCHAR(3) NOT NULL,
AP_NAME VARCHAR2(100) NOT NULL,
PRIMARY KEY(AIRLINEID, AP_NAME),
FOREIGN KEY(AIRLINEID) REFERENCES AIRLINE(AIRLINEID) ON DELETE CASCADE,
FOREIGN KEY(AP_NAME) REFERENCES AIRPORT(AP_NAME) ON DELETE CASCADE);

-- Insering values into Table: CONTAINS--

INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('AA','Louisville International Airport');
INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('AA','John F. Kennedy International Airport');
INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('AA','George Bush Intercontinental Airport');
INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('AA','San Francisco International Airport');
INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('AA','Tampa International Airport');

INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('AI','Chandigarh International Airport');
INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('AI','Dallas/Fort Worth International Airport');
INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('AI','Indira GandhiInternational Airport');
INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('AI','Chhatrapati Shivaji International Airport');
INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('AI','George Bush Intercontinental Airport');

INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('LH','Chhatrapati Shivaji International Airport');
INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('LH','Frankfurt Airport');
INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('LH','John F. Kennedy International Airport');
INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('LH','San Francisco International Airport');
INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('LH','Dallas/Fort Worth International Airport');

INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('BA','John F. Kennedy International Airport');
INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('BA','Chhatrapati Shivaji International Airport');
INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('BA','Chandigarh International Airport');
INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('BA','Frankfurt Airport');
INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('BA','San Francisco International Airport');

INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('QR','Chhatrapati Shivaji International Airport');
INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('QR','Dallas/Fort Worth International Airport');
INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('QR','John F. Kennedy International Airport');
INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('QR','Tampa International Airport');
INSERT INTO CONTAINS (AIRLINEID, AP_NAME) VALUES('QR','Louisville International Airport');

-- Checking values insertion --

SELECT *
FROM CONTAINS;


-- Creating ROUTE Table --

CREATE TABLE ROUTE
( R_NO INT,
SOURCE VARCHAR(3),
DESTINATION VARCHAR(3),
DISTANCE INT,
PRIMARY KEY(R_NO));

-- Insering values into Table: ROUTE --

INSERT INTO ROUTE(R_NO, SOURCE, DESTINATION, DISTANCE)
VALUES(001, 'BOM', 'DFW', 11596);

INSERT INTO ROUTE(R_NO, SOURCE, DESTINATION, DISTANCE)
VALUES(002, 'JFK', 'TPA', 1468);

INSERT INTO ROUTE(R_NO, SOURCE, DESTINATION, DISTANCE)
VALUES(003, 'JFK', 'BOM', 14846);

INSERT INTO ROUTE(R_NO, SOURCE, DESTINATION, DISTANCE)
VALUES(004, 'FRA', 'DEL', 12435);

INSERT INTO ROUTE(R_NO, SOURCE, DESTINATION, DISTANCE)
VALUES(005, 'SFO', 'FRA', 17546);

INSERT INTO ROUTE(R_NO, SOURCE, DESTINATION, DISTANCE)
VALUES(006, 'IXC', 'IAH', 17497);

INSERT INTO ROUTE(R_NO, SOURCE, DESTINATION, DISTANCE)
VALUES(007, 'BOM', 'SFO', 19124);

INSERT INTO ROUTE(R_NO, SOURCE, DESTINATION, DISTANCE)
VALUES(008, 'IAH', 'DEL', 16517);

-- CHecking values insertion --

SELECT *
FROM ROUTE;


-- Creating AIRCRAFT Table --

CREATE TABLE AIRCRAFT
(AIRCRAFT_CODE VARCHAR(10) NOT NULL,
ARRIVAL VARCHAR2(10),
DEPARTURE VARCHAR2(10),
MODEL1 VARCHAR(10),
STATUS VARCHAR(10),
DURATION1 VARCHAR2(30),
AIRCRAFTTYPE VARCHAR(10),
LAYOVER_TIME VARCHAR2(30),
NO_OF_STOPS INT,
AIRLINEID VARCHAR(3),
R_NO INT,
PRIMARY KEY(AIRCRAFT_CODE),
FOREIGN KEY(R_NO) REFERENCES ROUTE(R_NO),
FOREIGN KEY(AIRLINEID) REFERENCES AIRLINE(AIRLINEID) ON DELETE CASCADE);

-- Insering values into Table: Contains--

INSERT INTO AIRCRAFT(AIRCRAFT_CODE, R_NO, ARRIVAL, DEPARTURE, STATUS, DURATION1, AIRCRAFTTYPE, LAYOVER_TIME, NO_OF_STOPS, MODEL1, AIRLINEID)
VALUES('AI2014', 001,'02:10','03:15','On-time','24hr','Connecting',3,1,'BOEG-747','AI');


INSERT INTO AIRCRAFT(AIRCRAFT_CODE, R_NO, ARRIVAL, DEPARTURE, STATUS, DURATION1, AIRCRAFTTYPE, LAYOVER_TIME, NO_OF_STOPS, MODEL1, AIRLINEID)
VALUES('QR2305', 001,'13:00','13:55','Delayed','21hr','Non-stop',0,0,'BOEG-777', 'QR');


INSERT INTO AIRCRAFT(AIRCRAFT_CODE, R_NO, ARRIVAL, DEPARTURE, STATUS, DURATION1, AIRCRAFTTYPE, LAYOVER_TIME, NO_OF_STOPS, MODEL1, AIRLINEID)
VALUES('EY1234',002,'19:20','20:05','On-time','16hrs','Connecting',5,2,'BOEG-737','EY');


INSERT INTO AIRCRAFT(AIRCRAFT_CODE, R_NO, ARRIVAL, DEPARTURE, STATUS, DURATION1, AIRCRAFTTYPE, LAYOVER_TIME, NO_OF_STOPS, MODEL1, AIRLINEID)
VALUES('LH9876',003,'05:50','06:35','On-time','18hrs','Non-stop',0,0,'BOEG-757','LH');


INSERT INTO AIRCRAFT(AIRCRAFT_CODE, R_NO, ARRIVAL, DEPARTURE, STATUS, DURATION1, AIRCRAFTTYPE, LAYOVER_TIME, NO_OF_STOPS, MODEL1, AIRLINEID)
VALUES('BA1689',004,'10:20','10:55','On-time','14hrs','Non-stop',0,0,'BOEG-757','BA');


INSERT INTO AIRCRAFT(AIRCRAFT_CODE, R_NO, ARRIVAL, DEPARTURE, STATUS, DURATION1, AIRCRAFTTYPE, LAYOVER_TIME, NO_OF_STOPS, MODEL1, AIRLINEID)
VALUES('AA4367',005,'18:10','18:55','On-time','21hrs','Non-stop',0,0,'BOEG-777','AA');


INSERT INTO AIRCRAFT(AIRCRAFT_CODE, R_NO, ARRIVAL, DEPARTURE, STATUS, DURATION1, AIRCRAFTTYPE, LAYOVER_TIME, NO_OF_STOPS, MODEL1, AIRLINEID)
VALUES('QR1902',006,'22:00','22:50','Delayed','28hrs','Non-stop',5,1,'BOEG-737','QR');


INSERT INTO AIRCRAFT(AIRCRAFT_CODE, R_NO, ARRIVAL, DEPARTURE, STATUS, DURATION1, AIRCRAFTTYPE, LAYOVER_TIME, NO_OF_STOPS, MODEL1, AIRLINEID)
VALUES('BA3056',001,'02:15','02:55','On-time','29hrs','Connecting',3,1,'BOEG-747','BA');


INSERT INTO AIRCRAFT(AIRCRAFT_CODE, R_NO, ARRIVAL, DEPARTURE, STATUS, DURATION1, AIRCRAFTTYPE, LAYOVER_TIME, NO_OF_STOPS, MODEL1, AIRLINEID)
VALUES('EK3456',007,'18:50','19:40','On-time','30hrs','Non-stop',0,0,'BOEG-777','EK');


INSERT INTO AIRCRAFT(AIRCRAFT_CODE, R_NO, ARRIVAL, DEPARTURE, STATUS, DURATION1, AIRCRAFTTYPE, LAYOVER_TIME, NO_OF_STOPS, MODEL1, AIRLINEID)
VALUES('9W2334',008,'23:00','13:45','On-time','23hrs','Direct',0,0,'BOEG-747','9W');

-- Checking values insertion --

SELECT *
FROM AIRCRAFT;

SELECT *
FROM AIRCRAFT
FULL OUTER JOIN ROUTE ON AIRCRAFT.R_NO = ROUTE.R_NO;


-- Creating PASSENGER1 Table --

CREATE TABLE PASSENGER1
(PID INT NOT NULL,
PASSPORTNO VARCHAR(10) NOT NULL,
PRIMARY KEY(PID, PASSPORTNO));

-- Insering values in table: PASSENGER1--

INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(1,'A1234568');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(2,'B9876541');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(3,'C2345698');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(4,'D1002004');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(5,'X9324666');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(6,'B8765430');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(7,'J9801235');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(8,'A1122334');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(9,'Q1243567');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(10,'S1243269');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(11,'E3277889');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(12,'K3212322');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(13,'P3452390');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(14,'W7543336');
INSERT INTO PASSENGER1(PID, PASSPORTNO) VALUES(15,'R8990566');

-- Checking values insertion --

SELECT *
FROM PASSENGER1;


-- Creating PASSENGER2 Table --

CREATE TABLE PASSENGER2
(PASSPORTNO VARCHAR(10) NOT NULL,
FNAME VARCHAR2(20),
M VARCHAR(1),
LNAME VARCHAR2(20),
ADDRESS VARCHAR2(100),
PHONE INT,
AGE INT,
SEX VARCHAR(1),
PRIMARY KEY(PASSPORTNO));

--iNSERTING VALUES IN TABLE: PASSENGER2--

INSERT INTO PASSENGER2(PASSPORTNO,FNAME,M,LNAME,ADDRESS,PHONE,AGE,SEX)
VALUES('A1234568','ALEN','M','SMITH','2230 NORTHSIDE, APT 11, ALBANY, NY',8080367290,30,'M');

INSERT INTO PASSENGER2(PASSPORTNO,FNAME,M,LNAME,ADDRESS,PHONE,AGE,SEX)
VALUES('B9876541','ANKITA','V','AHIR','3456 VIKAS APTS, APT 102,DOMBIVLI, INDIA',8080367280,26,'F');

INSERT INTO PASSENGER2(PASSPORTNO,FNAME,M,LNAME,ADDRESS,PHONE,AGE,SEX)
VALUES('C2345698','KHYATI','A','MISHRA','7820 MCCALLUM COURTS, APT 234, AKRON, OH',8082267280,30,'F');

INSERT INTO PASSENGER2(PASSPORTNO,FNAME,M,LNAME,ADDRESS,PHONE,AGE,SEX)
VALUES('D1002004','ANKITA','S','PATIL','7720 MCCALLUM BLVD, APT 1082, DALLAS, TX',9080367266,23,'F');

INSERT INTO PASSENGER2(PASSPORTNO,FNAME,M,LNAME,ADDRESS,PHONE,AGE,SEX)
VALUES('X9324666','TEJASHREE','B','PANDIT','9082 ESTAES OF RICHARDSON, RICHARDSON, TX',9004360125,28,'F');

INSERT INTO PASSENGER2(PASSPORTNO,FNAME,M,LNAME,ADDRESS,PHONE,AGE,SEX)
VALUES('B8765430','LAKSHMI','P','SHARMA','1110 FIR HILLS, APT 903, AKRON, OH',7666190505,30,'F');

INSERT INTO PASSENGER2(PASSPORTNO,FNAME,M,LNAME,ADDRESS,PHONE,AGE,SEX)
VALUES('J9801235','AKHILESH','D','JOSHI','345 CHATHAM COURTS, APT 678, MUMBAI, INDIA',9080369290,29,'M');

INSERT INTO PASSENGER2(PASSPORTNO,FNAME,M,LNAME,ADDRESS,PHONE,AGE,SEX)
VALUES('A1122334','MANAN','S','LAKHANI','5589 CHTHAM REFLECTIONS, APT 349 HOUSTON, TX',9004335126,25,'F');

INSERT INTO PASSENGER2(PASSPORTNO,FNAME,M,LNAME,ADDRESS,PHONE,AGE,SEX)
VALUES('Q1243567','KARAN','M','MOTANI','4444 FRANKFORD VILLA, APT 77, GUILDERLAND, NY',9727626643,22,'M');

INSERT INTO PASSENGER2(PASSPORTNO,FNAME,M,LNAME,ADDRESS,PHONE,AGE,SEX)
VALUES('S1243269','ROM','A','SOLANKI','7720 MCCALLUM BLVD, APT 2087, DALLAS, TX',9004568903,60,'M');

INSERT INTO PASSENGER2(PASSPORTNO,FNAME,M,LNAME,ADDRESS,PHONE,AGE,SEX)
VALUES('E3277889','John','A','GATES','1234 BAKER APTS, APT 59, HESSE, GERMANY',9724569986,10,'M');

INSERT INTO PASSENGER2(PASSPORTNO,FNAME,M,LNAME,ADDRESS,PHONE,AGE,SEX)
VALUES('K3212322','SARA','B','GOMES','6785 SPLITSVILLA, APT 34, MIAMI, FL',9024569226,15,'F');

INSERT INTO PASSENGER2(PASSPORTNO,FNAME,M,LNAME,ADDRESS,PHONE,AGE,SEX)
VALUES('P3452390','ALIA','V','BHAT','548 MARKET PLACE, SAN Francisco, CA',9734567800,10,'F');

INSERT INTO PASSENGER2(PASSPORTNO,FNAME,M,LNAME,ADDRESS,PHONE,AGE,SEX)
VALUES('W7543336','JOHN','P','SMITH','6666 ROCK HILL, APT 2902, TAMPA, FL',4624569986,55,'M');

INSERT INTO PASSENGER2(PASSPORTNO,FNAME,M,LNAME,ADDRESS,PHONE,AGE,SEX)
VALUES('R8990566','RIA','T','GUPTA','3355 PALENCIA, APT 2065, MUMBAI, INDIA',4724512343,10,'M');

-- Checking values insertion --

SELECT *
FROM PASSENGER2;


-- Creating PASSENGER3 Table --

CREATE TABLE PASSENGER3
(PID INT NOT NULL,
AIRCRAFT_CODE VARCHAR(10),
PRIMARY KEY(PID),
FOREIGN KEY(AIRCRAFT_CODE) REFERENCES AIRCRAFT(AIRCRAFT_CODE) ON DELETE CASCADE);

-- INSERTING VALUES INTO TABLE: PASSENGER3--

INSERT INTO PASSENGER3(PID, AIRCRAFT_CODE) VALUES(1,'AI2014');
INSERT INTO PASSENGER3(PID, AIRCRAFT_CODE) VALUES(2,'LH9876');
INSERT INTO PASSENGER3(PID, AIRCRAFT_CODE) VALUES(3,'9W2334');
INSERT INTO PASSENGER3(PID, AIRCRAFT_CODE) VALUES(4,'QR1902');
INSERT INTO PASSENGER3(PID, AIRCRAFT_CODE) VALUES(5,'EY1234');
INSERT INTO PASSENGER3(PID, AIRCRAFT_CODE) VALUES(6,'BA3056');
INSERT INTO PASSENGER3(PID, AIRCRAFT_CODE) VALUES(7,'9W2334');
INSERT INTO PASSENGER3(PID, AIRCRAFT_CODE) VALUES(8,'AA4367');
INSERT INTO PASSENGER3(PID, AIRCRAFT_CODE) VALUES(9,'QR1902');
INSERT INTO PASSENGER3(PID, AIRCRAFT_CODE) VALUES(10,'EK3456');
INSERT INTO PASSENGER3(PID, AIRCRAFT_CODE) VALUES(11,'BA1689');
INSERT INTO PASSENGER3(PID, AIRCRAFT_CODE) VALUES(12,'QR1902');
INSERT INTO PASSENGER3(PID, AIRCRAFT_CODE) VALUES(13,'AI2014');
INSERT INTO PASSENGER3(PID, AIRCRAFT_CODE) VALUES(14,'BA1689');
INSERT INTO PASSENGER3(PID, AIRCRAFT_CODE) VALUES(15,'QR2305');

-- Checking values insertion --

SELECT *
FROM PASSENGER3;


-- Creating EMPLOYEE1 Table --

CREATE TABLE EMPLOYEE1
(SSN INT NOT NULL,
FNAME VARCHAR2(20),
M VARCHAR(1),
LNAME VARCHAR2(20),
ADDRESS VARCHAR2(100),
PHONE INT,
AGE INT,
SEX VARCHAR(1),
JOBTYPE VARCHAR2(30),
ASTYPE VARCHAR2(30),
ETYPE VARCHAR2(30),
SHIFT VARCHAR2(20),
POSITION1 VARCHAR2(30),
AP_NAME VARCHAR2(100),
CONSTRAINT check_emp_age
  CHECK (AGE < 60),
PRIMARY KEY(SSN),
FOREIGN KEY(AP_NAME) REFERENCES AIRPORT(AP_NAME) ON DELETE CASCADE);

-- INSERTING VALUES INTO TABLE: EMPLOYEE1--

INSERT INTO EMPLOYEE1(SSN, FNAME, M, LNAME, ADDRESS, PHONE, AGE, SEX, JOBTYPE, ASTYPE, ETYPE, SHIFT, POSITION1, AP_NAME)
VALUES(123456789,'LINDA','M','GOODMAN','731 Fondren, Houston, TX',4356789345, 35, 'F','ADMINISTRATIVE SUPPORT','RECEPTIONIST','','','','Louisville International Airport');

INSERT INTO EMPLOYEE1(SSN, FNAME, M, LNAME, ADDRESS, PHONE, AGE, SEX, JOBTYPE, ASTYPE, ETYPE, SHIFT, POSITION1, AP_NAME)
VALUES(333445555,'JOHNY','N','PAUL','638 Voss, Houston, TX',9834561995, 40, 'M','ADMINISTRATIVE SUPPORT','SECRETARY','','','','Louisville International Airport');

INSERT INTO EMPLOYEE1(SSN, FNAME, M, LNAME, ADDRESS, PHONE, AGE, SEX, JOBTYPE, ASTYPE, ETYPE, SHIFT, POSITION1, AP_NAME)
VALUES(999887777,'JAMES','P','BOND','3321 Castle, Spring, TX',9834666995, 50, 'M','ENGINEER','','RADIO ENGINEER','','','Louisville International Airport');


INSERT INTO EMPLOYEE1(SSN, FNAME, M, LNAME, ADDRESS, PHONE, AGE, SEX, JOBTYPE, ASTYPE, ETYPE, SHIFT, POSITION1, AP_NAME)
VALUES(987654321,'SHERLOCK','A','HOLMES','123 TOP HILL, SAN Francisco,CA',8089654321, 47, 'M','TRAFFIC MONITOR','','','DAY','','San Francisco International Airport');

INSERT INTO EMPLOYEE1(SSN, FNAME, M, LNAME, ADDRESS, PHONE, AGE, SEX, JOBTYPE, ASTYPE, ETYPE, SHIFT, POSITION1, AP_NAME)
VALUES(666884444,'SHELDON','A','COOPER','345 CHERRY PARK, HESSE,GERMANY',1254678903, 55, 'M','TRAFFIC MONITOR','','NIGHT','','','Frankfurt Airport');


INSERT INTO EMPLOYEE1(SSN, FNAME, M, LNAME, ADDRESS, PHONE, AGE, SEX, JOBTYPE, ASTYPE, ETYPE, SHIFT, POSITION1, AP_NAME)
VALUES(453453453,'RAJ','B','SHARMA','345 FLOYDS, MUMBAI,INDIA',4326789031, 35, 'M','AIRPORT AUTHORITY','','','','MANAGER','Chhatrapati Shivaji International Airport');


INSERT INTO EMPLOYEE1(SSN, FNAME, M, LNAME, ADDRESS, PHONE, AGE, SEX, JOBTYPE, ASTYPE, ETYPE, SHIFT, POSITION1, AP_NAME)
VALUES(987987987,'NIKITA','C','PAUL','110 SYNERGY PARK, DALLAS,TX',5678904325, 33, 'F','ENGINEER','','AIRPORT CIVIL ENGINEER','','','Dallas/Fort Worth International Airport');


INSERT INTO EMPLOYEE1(SSN, FNAME, M, LNAME, ADDRESS, PHONE, AGE, SEX, JOBTYPE, ASTYPE, ETYPE, SHIFT, POSITION1, AP_NAME)
VALUES(888665555,'SHUBHAM','R','GUPTA','567 CHANDANI CHOWK, DELHI, INDIA',8566778890, 39, 'M','ADMINISTRATIVE SUPPORT','DATA ENTRY WORKER','','','','Indira GandhiInternational Airport');

INSERT INTO EMPLOYEE1(SSN, FNAME, M, LNAME, ADDRESS, PHONE, AGE, SEX, JOBTYPE, ASTYPE, ETYPE, SHIFT, POSITION1, AP_NAME)
VALUES(125478909,'PRATIK','T','GOMES','334 VITRUVIAN PARK, ALBANY, NY',4444678903, 56, 'M','TRAFFIC MONITOR','','DAY','','','John F. Kennedy International Airport');

INSERT INTO EMPLOYEE1(SSN, FNAME, M, LNAME, ADDRESS, PHONE, AGE, SEX, JOBTYPE, ASTYPE, ETYPE, SHIFT, POSITION1, AP_NAME)
VALUES(324567897,'ADIT','P','DESAI','987 SOMNATH, CHANDIGARH, INDIA',2244658909, 36, 'M','TRAFFIC MONITOR','','DAY','','','Chandigarh International Airport');

-- Checking values insertion --

SELECT *
FROM EMPLOYEE1;


-- Creating EMPLOYEE2 Table --

CREATE TABLE EMPLOYEE2
(JOBTYPE VARCHAR2(30) NOT NULL,
SALARY INT,
PRIMARY KEY(JOBTYPE));

-- INSERTING VALUES INTO TABLE: EMPLOYEE2 --

INSERT INTO EMPLOYEE2(JOBTYPE, SALARY)VALUES('ADMINISTRATIVE SUPPORT',50000);
INSERT INTO EMPLOYEE2(JOBTYPE, SALARY)VALUES('ENGINEER',70000);
INSERT INTO EMPLOYEE2(JOBTYPE, SALARY)VALUES('TRAFFIC MONITOR',80000);
INSERT INTO EMPLOYEE2(JOBTYPE, SALARY)VALUES('AIRPORT AUTHORITY',90000);

-- Checking values insertion --

SELECT *
FROM EMPLOYEE2;

/*
-- Creating SERVES Table --

CREATE TABLE SERVES
(SSN INT NOT NULL,
PID INT NOT NULL,
PASSPORTNO VARCHAR(10) NOT NULL,
PRIMARY KEY(SSN, PID, PASSPORTNO),
FOREIGN KEY(SSN) REFERENCES EMPLOYEE1(SSN) ON DELETE CASCADE,
FOREIGN KEY(PID, PASSPORTNO) REFERENCES PASSENGER1(PID, PASSPORTNO) ON DELETE CASCADE);

-- INSERTING VALUES INTO TABLE: SERVES --

INSERT INTO SERVES(SSN, PID, PASSPORTNO) VALUES(123456789,1,'A1234568');
INSERT INTO SERVES(SSN, PID, PASSPORTNO) VALUES(123456789,15,'R8990566');
INSERT INTO SERVES(SSN, PID, PASSPORTNO) VALUES(123456789,9,'Q1243567');
INSERT INTO SERVES(SSN, PID, PASSPORTNO) VALUES(888665555,4,'D1002004');
INSERT INTO SERVES(SSN, PID, PASSPORTNO) VALUES(888665555,13,'P3452390');
INSERT INTO SERVES(SSN, PID, PASSPORTNO) VALUES(333445555,10,'S1243269');
INSERT INTO SERVES(SSN, PID, PASSPORTNO) VALUES(333445555,12,'K3212322');
INSERT INTO SERVES(SSN, PID, PASSPORTNO) VALUES(888665555,12,'K3212322');
INSERT INTO SERVES(SSN, PID, PASSPORTNO) VALUES(123456789,7,'J9801235');
INSERT INTO SERVES(SSN, PID, PASSPORTNO) VALUES(888665555,7,'J9801235');

-- Checking values insertion --

SELECT *
FROM SERVES;

*/

-- Creating TICKET1 Table --

CREATE TABLE TICKET1
(TICKET_NUMBER INT NOT NULL,
SOURCE1 VARCHAR(3),
DESTINATION VARCHAR(3),
DATE_OF_BOOKING DATE,
DATE_OF_TRAVEL DATE,
SEATNO VARCHAR(5),
CLASS1 VARCHAR2(15),
DATE_OF_CANCELLATION DATE,
PID INT,
PASSPORTNO VARCHAR(10),
FOREIGN KEY(PID, PASSPORTNO) REFERENCES PASSENGER1(PID, PASSPORTNO) ON DELETE CASCADE);

-- INSERTING INTO TABLE: TICKET1 --

INSERT INTO TICKET1(TICKET_NUMBER, SOURCE1, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS1, PID, PASSPORTNO)
VALUES(0011234111122,'BOM','DFW','11-MAY-16','','15-DEC-16','32A','ECONOMY',1,'A1234568');

INSERT INTO TICKET1(TICKET_NUMBER, SOURCE1, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS1, PID, PASSPORTNO)
VALUES(0984567222299,'JFK','BOM','11-JUN-16','10-DEC-16','20-DEC-16','45D','ECONOMY',2,'B9876541');

INSERT INTO TICKET1(TICKET_NUMBER, SOURCE1, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS1, PID, PASSPORTNO)
VALUES(1768901333273,'IAH','DEL','21-AUG-16','','25-DEC-16','1A','BUSINESS',3,'C2345698');

INSERT INTO TICKET1(TICKET_NUMBER, SOURCE1, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS1, PID, PASSPORTNO)
VALUES(5890987441464,'IXC','IAH','10-AUG-16','','12-JAN-17','20C','FIRST-CLASS',4,'D1002004');

INSERT INTO TICKET1(TICKET_NUMBER, SOURCE1, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS1, PID, PASSPORTNO)
VALUES(1577654664266,'JFK','TPA','13-JUN-16','','10-DEC-16','54E','ECONOMY',5,'X9324666');

INSERT INTO TICKET1(TICKET_NUMBER, SOURCE1, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS1, PID, PASSPORTNO)
VALUES(2206543545545,'BOM','DFW','11-NOV-16','','12-FEB-17','43B','ECONOMY',6,'B8765430');

INSERT INTO TICKET1(TICKET_NUMBER, SOURCE1, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS1, PID, PASSPORTNO)
VALUES(7064321779737,'IAH','DEL','15-NOV-16','','25-DEC-16','27B','FIRST-CLASS',7,'J9801235');

INSERT INTO TICKET1(TICKET_NUMBER, SOURCE1, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS1, PID, PASSPORTNO)
VALUES(1571357215116,'SFO','FRA','15-OCT-16','','18-DEC-16','34E','ECONOMY',8,'A1122334');

INSERT INTO TICKET1(TICKET_NUMBER, SOURCE1, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS1, PID, PASSPORTNO)
VALUES(1570864987655,'IXC','IAH','12-NOV-16','','30-DEC-16','54C','ECONOMY',9,'Q1243567');

INSERT INTO TICKET1(TICKET_NUMBER, SOURCE1, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS1, PID, PASSPORTNO)
VALUES(1579283997799,'BOM','SFO','22-JAN-16','','15-DEC-16','38A','ECONOMY',10,'S1243269');

INSERT INTO TICKET1(TICKET_NUMBER, SOURCE1, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS1, PID, PASSPORTNO)
VALUES(1255701876107,'FRA','DEL','19-OCT-16','','31-DEC-16','57F','ECONOMY',11,'E3277889');

INSERT INTO TICKET1(TICKET_NUMBER, SOURCE1, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS1, PID, PASSPORTNO)
VALUES(1251334499699,'IXC','IAH','20-NOV-16','','12-JAN-17','45D','ECONOMY',12,'K3212322');

INSERT INTO TICKET1(TICKET_NUMBER, SOURCE1, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS1, PID, PASSPORTNO)
VALUES(1258776199490,'BOM','DFW','13-MAY-16','25-MAY-16','15-DEC-16','37C','ECONOMY',13,'P3452390');

INSERT INTO TICKET1(TICKET_NUMBER, SOURCE1, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS1, PID, PASSPORTNO)
VALUES(5891155114477,'FRA','DEL','26-JUN-16','','23-DEC-16','55C','ECONOMY',14,'W7543336');

INSERT INTO TICKET1(TICKET_NUMBER, SOURCE1, DESTINATION, DATE_OF_BOOKING, DATE_OF_CANCELLATION, DATE_OF_TRAVEL, SEATNO, CLASS1, PID, PASSPORTNO)
VALUES(5893069766787,'BOM','DFW','11-AUG-16','','22-DEC-16','33F','ECONOMY',15,'R8990566');

-- Checking values insertion --

SELECT *
FROM TICKET1;


-- Creating TICKET2 Table --

CREATE TABLE TICKET2
(DATE_OF_BOOKING DATE NOT NULL,
SOURCE1 VARCHAR(3) NOT NULL,
DESTINATION VARCHAR(3) NOT NULL,
CLASS1 VARCHAR2(15) NOT NULL,
PRICE INT,
PRIMARY KEY(DATE_OF_BOOKING, SOURCE1, DESTINATION, CLASS1));

-- INSERTING VALUES INTO TICKET2 --

INSERT INTO TICKET2(DATE_OF_BOOKING, SOURCE1, DESTINATION, CLASS1, PRICE) 
VALUES('11-MAY-16','BOM','DFW','ECONOMY',95000);

INSERT INTO TICKET2(DATE_OF_BOOKING, SOURCE1, DESTINATION, CLASS1, PRICE) 
VALUES('11-JUN-16','JFK','BOM','ECONOMY',100000);

INSERT INTO TICKET2(DATE_OF_BOOKING, SOURCE1, DESTINATION, CLASS1, PRICE) 
VALUES('21-AUG-16','IAH','DEL','BUSINESS',200000);

INSERT INTO TICKET2(DATE_OF_BOOKING, SOURCE1, DESTINATION, CLASS1, PRICE) 
VALUES('10-AUG-16','IXC','IAH','FIRST-CLASS',150000);

INSERT INTO TICKET2(DATE_OF_BOOKING, SOURCE1, DESTINATION, CLASS1, PRICE) 
VALUES('13-JUN-16','JFK','TPA','ECONOMY',98000);

INSERT INTO TICKET2(DATE_OF_BOOKING, SOURCE1, DESTINATION, CLASS1, PRICE) 
VALUES('11-NOV-16','BOM','DFW','ECONOMY',125000);

INSERT INTO TICKET2(DATE_OF_BOOKING, SOURCE1, DESTINATION, CLASS1, PRICE) 
VALUES('15-NOV-16','IAH','DEL','FIRST-CLASS',195000);

INSERT INTO TICKET2(DATE_OF_BOOKING, SOURCE1, DESTINATION, CLASS1, PRICE) 
VALUES('15-OCT-16','SFO','FRA','ECONOMY',170000);

INSERT INTO TICKET2(DATE_OF_BOOKING, SOURCE1, DESTINATION, CLASS1, PRICE) 
VALUES('12-NOV-16','IXC','IAH','ECONOMY',140000);

INSERT INTO TICKET2(DATE_OF_BOOKING, SOURCE1, DESTINATION, CLASS1, PRICE) 
VALUES('22-JAN-16','BOM','SFO','ECONOMY',45000);

INSERT INTO TICKET2(DATE_OF_BOOKING, SOURCE1, DESTINATION, CLASS1, PRICE) 
VALUES('19-OCT-16','FRA','DEL','ECONOMY',100000);

INSERT INTO TICKET2(DATE_OF_BOOKING, SOURCE1, DESTINATION, CLASS1, PRICE) 
VALUES('20-NOV-16','IXC','IAH','ECONOMY',120000);

INSERT INTO TICKET2(DATE_OF_BOOKING, SOURCE1, DESTINATION, CLASS1, PRICE) 
VALUES('13-MAY-16','BOM','DFW','ECONOMY',65000);

INSERT INTO TICKET2(DATE_OF_BOOKING, SOURCE1, DESTINATION, CLASS1, PRICE) 
VALUES('26-JUN-16','FRA','DEL','ECONOMY',80000);

INSERT INTO TICKET2(DATE_OF_BOOKING, SOURCE1, DESTINATION, CLASS1, PRICE) 
VALUES('11-AUG-16','BOM','DFW','ECONOMY',98000);

-- Checking values insertion --

SELECT *
FROM TICKET2;


-- Creating TICKET3 Table --

CREATE TABLE TICKET3
(DATE_OF_CANCELLATION DATE NOT NULL,
SURCHARGE INT,
PRIMARY KEY(DATE_OF_CANCELLATION));

-- INSERTING VALUES INTO TABLE: TICKET3 --

INSERT INTO TICKET3(DATE_OF_CANCELLATION, SURCHARGE) VALUES('10-DEC-16',75000);
INSERT INTO TICKET3(DATE_OF_CANCELLATION, SURCHARGE) VALUES('25-MAY-16',25000);

-- Checking values insertion --

SELECT *
FROM TICKET3;


-- Views --


 CREATE VIEW DETAILS(AIRCRAFT_CODE,R_NO,SOURCES,DESTINATION,ARRIVAL,DEPARTURE,DURATION1,DISTANCE)
 AS SELECT A1.AIRCRAFT_CODE,R.R_NO,R.SOURCE,R.DESTINATION,A1.ARRIVAL,A1.DEPARTURE,A1.DURATION1,R.DISTANCE
 From Route R,Aircraft A1
 WHERE R.R_NO = 001;
 
 Select * 
 FROM DETAILS;
   

SELECT a1.AL_NAME, a2.AIRCRAFT_CODE, r.SOURCE, r.DESTINATION, a2.ARRIVAL, a2.DEPARTURE, a2.DURATION1, a2.AIRCRAFTTYPE, a2.LAYOVER_TIME, a2.NO_OF_STOPS 
FROM AIRLINE a1, AIRCRAFT a2, ROUTE r 
WHERE a1.AIRLINEID = a2.AIRLINEID AND a2.R_NO = r.R_NO;

/*

-- Stored Procedure for Details of economy class passengers with destination 'DFW' --

CREATE OR REPLACE PROCEDURE DFWECONOMYPASSENGERS AS 
CURSOR ECOPASSDETAILS is
select al.AL_NAME,fl.AIRCRAFT_CODE,p2.FNAME,p2.LNAME,p2.PASSPORTNO,t.CLASS1,t.DATE_OF_TRAVEL,t.DESTINATION,t.SOURCE1,t.SEATNO,t.TICKET_NUMBER
from Airline al,AIRCRAFT fl,PASSENGER1 p1, PASSENGER2 p2 ,PASSENGER3 p3,TICKET1 t
where al.AIRLINEID = fl.AIRLINEID
and  p1.PID= p3.PID
and  p1.PASSPORTNO =p2.PASSPORTNO
and fl.AIRCRAFT_CODE = p3.AIRCRAFT_CODE
and t.PASSPORTNO = p2.PASSPORTNO
and t.CLASS1='ECONOMY' and t.DESTINATION='DFW';
 
PASSDETAILS ECOPASSDETAILS%rowtype;
 
BEGIN
 
Open ECOPASSDETAILS ;
   LOOP
    fetch ECOPASSDETAILS into PASSDETAILS;
     EXIT WHEN ECOPASSDETAILS%NOTFOUND;
   dbms_output.put_line (PASSDETAILS.AL_NAME || '  ' || PASSDETAILS.AIRCRAFT_CODE || '  ' || PASSDETAILS.FNAME || '  ' || PASSDETAILS.LNAME|| '  ' ||PASSDETAILS.PASSPORTNO || '  ' || PASSDETAILS.CLASS1 || '  ' || PASSDETAILS.SOURCE1 || '  ' || PASSDETAILS.SEATNO || '  ' || PASSDETAILS.TICKET_NUMBER);
   
    END LOOP;
     close ECOPASSDETAILS;
 END DFWECONOMYPASSENGERS;
 /
 
 --Testing output --
 SET SERVEROUTPUT ON
 exec DFWECONOMYPASSENGERS();
 /




-- Stored Procedure for AIRCRAFT details by status --
CREATE OR REPLACE PROCEDURE AIRCRAFTSBYSTATUS 
(
  IN_STATUS IN VARCHAR2
) AS 
 
CURSOR fSTATUS is
select  distinct f1.AIRCRAFT_CODE ,al.AL_NAME ,f1.ARRIVAL,f1.departure,r1.SOURCE,r1.DESTINATION,f1.STATUS,f1.AIRCRAFTTYPE 
from Airline al ,Airport ap1,AIRCRAFT f1, ROUTE r1
where al.AIRLINEID=f1.AIRLINEID and f1.R_NO = r1.R_NO
and  f1.STATUS =IN_STATUS;
 
AIRCRAFTStatus fSTATUS%rowtype;
  
BEGIN
  Open fSTATUS ;
   LOOP
    fetch fSTATUS into AIRCRAFTStatus;
     EXIT WHEN fSTATUS%NOTFOUND;
   dbms_output.put_line (AIRCRAFTStatus.AIRCRAFT_CODE || '  ' || AIRCRAFTStatus.AL_NAME || '  ' || AIRCRAFTStatus.ARRIVAL || '  ' || AIRCRAFTStatus.departure|| '  ' ||AIRCRAFTStatus.Source || '  ' || AIRCRAFTStatus.DESTINATION || '  ' || AIRCRAFTStatus.STATUS || '  ' || AIRCRAFTStatus.AIRCRAFTTYPE);
   
    END LOOP;
     close fSTATUS;
END AIRCRAFTSBYSTATUS;
/
 
 
 --Testing output --
SET SERVEROUTPUT ON 
exec AIRCRAFTSBYSTATUS('Delayed');

-- or--

SET SERVEROUTPUT ON 
exec AIRCRAFTSBYSTATUS('On-time');
/
 
 

-- Trigger, when AIRCRAFT is delayed it is logged into different table--

CREATE OR REPLACE TRIGGER DELAYEDAIRCRAFTS 
AFTER INSERT ON AIRCRAFT 
FOR EACH ROW 
DECLARE

BEGIN
    if updating('STATUS')
    then
       insert into delayed_AIRCRAFTS (AIRCRAFT_CODE, R_NO, ARRIVAL, DEPARTURE, AIRLINEID ,report_time)
       values(:new.AIRCRAFT_CODE,:new.R_NO,:new.ARRIVAL, :new.DEPARTURE, :new.airlineid, sysdate);
end if;
 
END;
/


-- This is audit table for this trigger--
 CREATE TABLE DELAYED_AIRCRAFTS 
   (            
                AIRCRAFT_CODE VARCHAR(10) NOT NULL,
                ARRIVAL VARCHAR2(10),
                DEPARTURE VARCHAR2(10),
                AIRLINEID VARCHAR(3),
                R_NO INT,
                REPORT_TIME DATE
   );
 

INSERT INTO AIRCRAFT(AIRCRAFT_CODE, R_NO, ARRIVAL, DEPARTURE, STATUS, DURATION1, AIRCRAFTTYPE, LAYOVER_TIME, NO_OF_STOPS, MODEL1, AIRLINEID)
VALUES('AI127', 001, '02:10','03:15','Delayed','24hr','Connecting',3,1, 'BOEG-777','AI');

select *
from delayed_aircrafts;

select *
from aircraft;




--TRIGGER TO UPDATE SALARY OF AN EMPLOYEE DEPENDING ON JOBTYPE--

CREATE OR REPLACE TRIGGER UPDATEDSalary AFTER
  INSERT OR
  UPDATE OF SALARY ON EMPLOYEE2
  FOR EACH ROW
DECLARE 
JOBTYPE EMPLOYEE2.JOBTYPE%TYPE;
BEGIN
  CASE
    WHEN (JOBTYPE= 'Administrative Support') THEN
      UPDATE EMPLOYEE2 SET SALARY=SALARY+SALARY*.10;
    WHEN (JOBTYPE= 'ENGINEER') THEN
      UPDATE EMPLOYEE2 SET SALARY=SALARY+SALARY*.05;
    WHEN (JOBTYPE= 'TRAFFIC MONITOR') THEN
      UPDATE EMPLOYEE2 SET SALARY=SALARY+SALARY*.25;
    WHEN (JOBTYPE= 'AIRPORT AUTHORITY') THEN
      UPDATE EMPLOYEE2 SET SALARY=SALARY+SALARY*.45;
  END CASE; 
END;
/

--LET'S UPDATE SALARY OF EMPLOYEE --

UPDATE EMPLOYEE2
SET SALARY=70000
WHERE JOBTYPE ='ADMINISTRATIVE-SUPPORT';



-- TRIGGER TO UPDATE 'TICKET_PRICE_HISTORY' TABLE WHEN THE PRICE OF AN AIR TICKET IS UPDATED IN TICKET2 TABLE--


-- CREATING TABLE TICKET_PRICE_HISTORY--

CREATE TABLE TICKET_PRICE_HISTORY
(DATE_OF_BOOKING DATE NOT NULL,
SOURCE1 VARCHAR(3) NOT NULL,
DESTINATION VARCHAR(3) NOT NULL,
CLASS1 VARCHAR2(15) NOT NULL,
PRICE INT,
PRIMARY KEY(DATE_OF_BOOKING, SOURCE1, DESTINATION, CLASS1));


-- CREATE A TRIGGER TICKET_PRICE_HISTORY --
set define off;
CREATE OR REPLACE TRIGGER TICKET_PRICE_HISTORY1
BEFORE UPDATE OF PRICE
ON TICKET2
FOR EACH ROW
DECLARE

BEGIN
    INSERT INTO TICKET_PRICE_HISTORY ( DATE_OF_BOOKING, SOURCE1, DESTINATION, CLASS1, PRICE)
    VALUES(:old.DATE_OF_BOOKING, :old.SOURCE1, :old.DESTINATION, :old.CLASS1, :old.PRICE);

END;
/


--LET'S UPDATE A PRICE OR FARE OF AN AIR TICKET --

UPDATE TICKET2
SET PRICE=150000
WHERE DATE_OF_BOOKING ='11-NOV-16'
AND SOURCE1='BOM'
AND DESTINATION='DFW'
AND CLASS1='ECONOMY';

commit;

*/
