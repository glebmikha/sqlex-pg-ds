drop table if exists pass_in_trip;
drop table if exists trip;
drop table if exists passenger;
drop table if exists company;

--
CREATE TABLE Company (
	ID_comp int NOT NULL ,
	name char (10) NOT NULL 
)
;

CREATE TABLE Pass_in_trip (
	trip_no int NOT NULL ,
	date timestamp NOT NULL ,
	ID_psg int NOT NULL ,
	place char (10) NOT NULL 
)
;

CREATE TABLE Passenger (
	ID_psg int NOT NULL ,
	name char (20) NOT NULL 
)
;

CREATE TABLE Trip (
	trip_no int NOT NULL ,
	ID_comp int NOT NULL ,
	plane char (10) NOT NULL ,
	town_from char (25) NOT NULL ,
	town_to char (25) NOT NULL ,
	time_out timestamp NOT NULL ,
	time_in timestamp NOT NULL 
)
;

ALTER TABLE Company  ADD 
	CONSTRAINT PK2 PRIMARY KEY   
	(
		ID_comp
	)  
;

ALTER TABLE Pass_in_trip ADD 
	CONSTRAINT PK_pt PRIMARY KEY   
	(
		trip_no,
		date,
		ID_psg
	)  
;

ALTER TABLE Passenger  ADD 
	CONSTRAINT PK_psg PRIMARY KEY   
	(
		ID_psg
	)  
;

ALTER TABLE Trip  ADD 
	CONSTRAINT PK_t PRIMARY KEY   
	(
		trip_no
	)  
;

ALTER TABLE Pass_in_trip ADD 
	CONSTRAINT FK_Pass_in_trip_Passenger FOREIGN KEY 
	(
		ID_psg
	) REFERENCES Passenger (
		ID_psg
	);
	
ALTER TABLE Pass_in_trip ADD 
	CONSTRAINT FK_Pass_in_trip_Trip FOREIGN KEY 
	(
		trip_no
	) REFERENCES Trip (
		trip_no
	)
;

ALTER TABLE Trip ADD 
	CONSTRAINT FK_Trip_Company FOREIGN KEY 
	(
		ID_comp
	) REFERENCES Company (
		ID_comp
	)
;
                                                                                                                                                                                                                                                                 
----Company------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into Company values(1,'Don_avia  ');
insert into Company values(2,'Aeroflot  ');
insert into Company values(3,'Dale_avia ');
insert into Company values(4,'air_France');
insert into Company values(5,'British_AW');


                                                                                                                                                                                                                                                                 
----Passenger------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into Passenger values(1,'Bruce Willis        ');
insert into Passenger values(2,'George Clooney      ');
insert into Passenger values(3,'Kevin Costner       ');
insert into Passenger values(4,'Donald Sutherland   ');
insert into Passenger values(5,'Jennifer Lopez      ');
insert into Passenger values(6,'Ray Liotta          ');
insert into Passenger values(7,'Samuel L. Jackson   ');
insert into Passenger values(8,'Nikole Kidman       ');
insert into Passenger values(9,'Alan Rickman        ');
insert into Passenger values(10,'Kurt Russell        ');
insert into Passenger values(11,'Harrison Ford       ');
insert into Passenger values(12,'Russell Crowe       ');
insert into Passenger values(13,'Steve Martin        ');
insert into Passenger values(14,'Michael Caine       ');
insert into Passenger values(15,'Angelina Jolie      ');
insert into Passenger values(16,'Mel Gibson          ');
insert into Passenger values(17,'Michael Douglas     ');
insert into Passenger values(18,'John Travolta       ');
insert into Passenger values(19,'Sylvester Stallone  ');
insert into Passenger values(20,'Tommy Lee Jones     ');
insert into Passenger values(21,'Catherine Zeta-Jones');
insert into Passenger values(22,'Antonio Banderas    ');
insert into Passenger values(23,'Kim Basinger        ');
insert into Passenger values(24,'Sam Neill           ');
insert into Passenger values(25,'Gary Oldman         ');
insert into Passenger values(26,'Clint Eastwood      ');
insert into Passenger values(27,'Brad Pitt           ');
insert into Passenger values(28,'Johnny Depp         ');
insert into Passenger values(29,'Pierce Brosnan      ');
insert into Passenger values(30,'Sean Connery        ');
insert into Passenger values(31,'Bruce Willis        ');
insert into Passenger values(37,'Mullah Omar         ');



                                                                                                                                                                                                                                                                 
----Trip------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into Trip values(1100,4,'Boeing    ','Rostov                   ','Paris                    ','19000101 14:30:00.000','19000101 17:50:00.000');
insert into Trip values(1101,4,'Boeing    ','Paris                    ','Rostov                   ','19000101 08:12:00.000','19000101 11:45:00.000');
insert into Trip values(1123,3,'TU-154    ','Rostov                   ','Vladivostok              ','19000101 16:20:00.000','19000101 03:40:00.000');
insert into Trip values(1124,3,'TU-154    ','Vladivostok              ','Rostov                   ','19000101 09:00:00.000','19000101 19:50:00.000');
insert into Trip values(1145,2,'IL-86     ','Moscow                   ','Rostov                   ','19000101 09:35:00.000','19000101 11:23:00.000');
insert into Trip values(1146,2,'IL-86     ','Rostov                   ','Moscow                   ','19000101 17:55:00.000','19000101 20:01:00.000');
insert into Trip values(1181,1,'TU-134    ','Rostov                   ','Moscow                   ','19000101 06:12:00.000','19000101 08:01:00.000');
insert into Trip values(1182,1,'TU-134    ','Moscow                   ','Rostov                   ','19000101 12:35:00.000','19000101 14:30:00.000');
insert into Trip values(1187,1,'TU-134    ','Rostov                   ','Moscow                   ','19000101 15:42:00.000','19000101 17:39:00.000');
insert into Trip values(1188,1,'TU-134    ','Moscow                   ','Rostov                   ','19000101 22:50:00.000','19000101 00:48:00.000');
insert into Trip values(1195,1,'TU-154    ','Rostov                   ','Moscow                   ','19000101 23:30:00.000','19000101 01:11:00.000');
insert into Trip values(1196,1,'TU-154    ','Moscow                   ','Rostov                   ','19000101 04:00:00.000','19000101 05:45:00.000');
insert into Trip values(7771,5,'Boeing    ','London                   ','Singapore                ','19000101 01:00:00.000','19000101 11:00:00.000');
insert into Trip values(7772,5,'Boeing    ','Singapore                ','London                   ','19000101 12:00:00.000','19000101 02:00:00.000');
insert into Trip values(7773,5,'Boeing    ','London                   ','Singapore                ','19000101 03:00:00.000','19000101 13:00:00.000');
insert into Trip values(7774,5,'Boeing    ','Singapore                ','London                   ','19000101 14:00:00.000','19000101 06:00:00.000');
insert into Trip values(7775,5,'Boeing    ','London                   ','Singapore                ','19000101 09:00:00.000','19000101 20:00:00.000');
insert into Trip values(7776,5,'Boeing    ','Singapore                ','London                   ','19000101 18:00:00.000','19000101 08:00:00.000');
insert into Trip values(7777,5,'Boeing    ','London                   ','Singapore                ','19000101 18:00:00.000','19000101 06:00:00.000');
insert into Trip values(7778,5,'Boeing    ','Singapore                ','London                   ','19000101 22:00:00.000','19000101 12:00:00.000');
insert into Trip values(8881,5,'Boeing    ','London                   ','Paris                    ','19000101 03:00:00.000','19000101 04:00:00.000');
insert into Trip values(8882,5,'Boeing    ','Paris                    ','London                   ','19000101 22:00:00.000','19000101 23:00:00.000');



                                                                                                                                                                                                                                                                 
----Pass_in_trip------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into Pass_in_trip values(1100,'20030429 00:00:00.000',1,'1a        ');
insert into Pass_in_trip values(1123,'20030405 00:00:00.000',3,'2a        ');
insert into Pass_in_trip values(1123,'20030408 00:00:00.000',1,'4c        ');
insert into Pass_in_trip values(1123,'20030408 00:00:00.000',6,'4b        ');
insert into Pass_in_trip values(1124,'20030402 00:00:00.000',2,'2d        ');
insert into Pass_in_trip values(1145,'20030405 00:00:00.000',3,'2c        ');
insert into Pass_in_trip values(1181,'20030401 00:00:00.000',1,'1a        ');
insert into Pass_in_trip values(1181,'20030401 00:00:00.000',6,'1b        ');
insert into Pass_in_trip values(1181,'20030401 00:00:00.000',8,'3c        ');
insert into Pass_in_trip values(1181,'20030413 00:00:00.000',5,'1b        ');
insert into Pass_in_trip values(1182,'20030413 00:00:00.000',5,'4b        ');
insert into Pass_in_trip values(1187,'20030414 00:00:00.000',8,'3a        ');
insert into Pass_in_trip values(1188,'20030401 00:00:00.000',8,'3a        ');
insert into Pass_in_trip values(1182,'20030413 00:00:00.000',9,'6d        ');
insert into Pass_in_trip values(1145,'20030425 00:00:00.000',5,'1d        ');
insert into Pass_in_trip values(1187,'20030414 00:00:00.000',10,'3d        ');
insert into Pass_in_trip values(8882,'20051106 00:00:00.000',37,'1a        ') ;
insert into Pass_in_trip values(7771,'20051107 00:00:00.000',37,'1c        ') ;
insert into Pass_in_trip values(7772,'20051107 00:00:00.000',37,'1a        ') ;
insert into Pass_in_trip values(8881,'20051108 00:00:00.000',37,'1d        ') ;
insert into Pass_in_trip values(7778,'20051105 00:00:00.000',10,'2a        ') ;
insert into Pass_in_trip values(7772,'20051129 00:00:00.000',10,'3a        ');
insert into Pass_in_trip values(7771,'20051104 00:00:00.000',11,'4a        ');
insert into Pass_in_trip values(7771,'20051107 00:00:00.000',11,'1b        ');
insert into Pass_in_trip values(7771,'20051109 00:00:00.000',11,'5a        ');
insert into Pass_in_trip values(7772,'20051107 00:00:00.000',12,'1d        ');
insert into Pass_in_trip values(7773,'20051107 00:00:00.000',13,'2d        ');
insert into Pass_in_trip values(7772,'20051129 00:00:00.000',13,'1b        ');
insert into Pass_in_trip values(8882,'20051113 00:00:00.000',14,'3d        ');
insert into Pass_in_trip values(7771,'20051114 00:00:00.000',14,'4d        ');
insert into Pass_in_trip values(7771,'20051116 00:00:00.000',14,'5d        ');
insert into Pass_in_trip values(7772,'20051129 00:00:00.000',14,'1c        ');

drop table if exists Laptop;
drop table if exists PC;
drop table if exists Printer;
drop table if exists Product;

CREATE TABLE Laptop (
	code int NOT NULL ,
	model varchar (50) NOT NULL ,
	speed smallint NOT NULL ,
	ram smallint NOT NULL ,
	hd real NOT NULL ,
	price decimal(12,2) NULL ,
	screen smallint NOT NULL 
) 
;

CREATE TABLE PC (
	code int NOT NULL ,
	model varchar (50) NOT NULL ,
	speed smallint NOT NULL ,
	ram smallint NOT NULL ,
	hd real NOT NULL ,
	cd varchar (10) NOT NULL ,
	price decimal(12,2) NULL 
) 
;

CREATE TABLE Product (
	maker varchar (10) NOT NULL ,
	model varchar (50) NOT NULL ,
	type varchar (50) NOT NULL 
) 
;

CREATE TABLE Printer (
	code int NOT NULL ,
	model varchar (50) NOT NULL ,
	color char (1) NOT NULL ,
	type varchar (10) NOT NULL ,
	price decimal(12,2) NULL 
) 
;

ALTER TABLE Laptop  ADD 
	CONSTRAINT PK_Laptop PRIMARY KEY
	(
		code
	)   
;

ALTER TABLE PC  ADD 
	CONSTRAINT PK_pc PRIMARY KEY 
	(
		code
	)   
;

ALTER TABLE Product  ADD 
	CONSTRAINT PK_product PRIMARY KEY 
	(
		model
	)   
;

ALTER TABLE Printer  ADD 
	CONSTRAINT PK_printer PRIMARY KEY 
	(
		code
	)   
;

ALTER TABLE Laptop ADD 
	CONSTRAINT FK_Laptop_product FOREIGN KEY 
	(
		model
	) REFERENCES Product (
		model
	)
;

ALTER TABLE PC ADD 
	CONSTRAINT FK_pc_product FOREIGN KEY 
	(
		model
	) REFERENCES Product (
		model
	)
;

ALTER TABLE Printer ADD 
	CONSTRAINT FK_printer_product FOREIGN KEY 
	(
		model
	) REFERENCES Product (
		model
	)
;
----Product------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into Product values('B','1121','PC');
insert into Product values('A','1232','PC');
insert into Product values('A','1233','PC');
insert into Product values('E','1260','PC');
insert into Product values('A','1276','Printer');
insert into Product values('D','1288','Printer');
insert into Product values('A','1298','Laptop');
insert into Product values('C','1321','Laptop');
insert into Product values('A','1401','Printer');
insert into Product values('A','1408','Printer');
insert into Product values('D','1433','Printer');
insert into Product values('E','1434','Printer');
insert into Product values('B','1750','Laptop');
insert into Product values('A','1752','Laptop');
insert into Product values('E','2113','PC');
insert into Product values('E','2112','PC');
                                                                                                                                                                                                                                                                 
----PC------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into PC values(1,'1232',500,64,5,'12x','600');
insert into PC values(2,'1121',750,128,14,'40x','850');
insert into PC values(3,'1233',500,64,5,'12x','600');
insert into PC values(4,'1121',600,128,14,'40x','850');
insert into PC values(5,'1121',600,128,8,'40x','850');
insert into PC values(6,'1233',750,128,20,'50x','950');
insert into PC values(7,'1232',500,32,10,'12x','400');
insert into PC values(8,'1232',450,64,8,'24x','350');
insert into PC values(9,'1232',450,32,10,'24x','350');
insert into PC values(10,'1260',500,32,10,'12x','350');
insert into PC values(11,'1233',900,128,40,'40x','980');
insert into PC values(12,'1233',800,128,20,'50x','970');

                                                                                                                                                                                                                                                                 
----Laptop------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into Laptop values(1,'1298',350,32,4,'700',11);
insert into Laptop values(2,'1321',500,64,8,'970',12);
insert into Laptop values(3,'1750',750,128,12,'1200',14);
insert into Laptop values(4,'1298',600,64,10,'1050',15);
insert into Laptop values(5,'1752',750,128,10,'1150',14);
insert into Laptop values(6,'1298',450,64,10,'950',12);

                                                                                                                                                                                                                                                                 
----Printer------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into Printer values(1,'1276','n','Laser','400');
insert into Printer values(2,'1433','y','Jet','270');
insert into Printer values(3,'1434','y','Jet','290');
insert into Printer values(4,'1401','n','Matrix','150');
insert into Printer values(5,'1408','n','Matrix','270');
insert into Printer values(6,'1288','n','Laser','400');

-- select * from income
drop table if exists Income;
drop table if exists Outcome;
drop table if exists Outcome_o;
drop table if exists Income_o;

CREATE TABLE Income (
	code int NOT NULL ,
	point smallint NOT NULL ,
	date timestamp NOT NULL ,
	inc decimal(12,2) NOT NULL 
) 
;

CREATE TABLE Outcome (
	code int NOT NULL ,
	point smallint NOT NULL ,
	date timestamp NOT NULL ,
	out decimal(12,2) NOT NULL 
) 
;

CREATE TABLE Income_o (
	point smallint NOT NULL ,
	date timestamp NOT NULL ,
	inc decimal(12,2) NOT NULL 
) 
;

CREATE TABLE Outcome_o (
	point smallint NOT NULL ,
	date timestamp NOT NULL ,
	out decimal(12,2) NOT NULL 
) 
;

ALTER TABLE Income  ADD 
	CONSTRAINT PK_Income PRIMARY KEY 
	(
		code
	)   
;

ALTER TABLE Outcome  ADD 
	CONSTRAINT PK_Outcome PRIMARY KEY 
	(
		code
	)   
;

ALTER TABLE Income_o  ADD 
	CONSTRAINT PK_Income_o PRIMARY KEY 
	(
		point,
		date
	)   
;

ALTER TABLE Outcome_o  ADD 
	CONSTRAINT PK_Outcome_o PRIMARY KEY 
	(
		point,
		date
	)   
;
                                                                                                                                                                                                                                                                 
----Income------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into Income values(1,1,'20010322 00:00:00.000','15000.00');
insert into Income values(2,1,'20010323 00:00:00.000','15000.00');
insert into Income values(3,1,'20010324 00:00:00.000','3600.00');
insert into Income values(4,2,'20010322 00:00:00.000','10000.00');
insert into Income values(5,2,'20010324 00:00:00.000','1500.00');
insert into Income values(6,1,'20010413 00:00:00.000','5000.00');
insert into Income values(7,1,'20010511 00:00:00.000','4500.00');
insert into Income values(8,1,'20010322 00:00:00.000','15000.00');
insert into Income values(9,2,'20010324 00:00:00.000','1500.00');
insert into Income values(10,1,'20010413 00:00:00.000','5000.00');
insert into Income values(11,1,'20010324 00:00:00.000','3400.00');
insert into Income values(12,3,'20010913 00:00:00.000','1350.00');
insert into Income values(13,3,'20010913 00:00:00.000','1750.00');

                                                                                                                                                                                                                                                                 
---------Outcome-----------------
insert into Outcome values(1,1,'20010314 00:00:00.000','15348.00');
insert into Outcome values(2,1,'20010324 00:00:00.000','3663.00');
insert into Outcome values(3,1,'20010326 00:00:00.000','1221.00');
insert into Outcome values(4,1,'20010328 00:00:00.000','2075.00');
insert into Outcome values(5,1,'20010329 00:00:00.000','2004.00');
insert into Outcome values(6,1,'20010411 00:00:00.000','3195.04');
insert into Outcome values(7,1,'20010413 00:00:00.000','4490.00');
insert into Outcome values(8,1,'20010427 00:00:00.000','3110.00');
insert into Outcome values(9,1,'20010511 00:00:00.000','2530.00');
insert into Outcome values(10,2,'20010322 00:00:00.000','1440.00');
insert into Outcome values(11,2,'20010329 00:00:00.000','7848.00');
insert into Outcome values(12,2,'20010402 00:00:00.000','2040.00');
insert into Outcome values(13,1,'20010324 00:00:00.000','3500.00');
insert into Outcome values(14,2,'20010322 00:00:00.000','1440.00');
insert into Outcome values(15,1,'20010329 00:00:00.000','2006.00');
insert into Outcome values(16,3,'20010913 00:00:00.000','1200.00');
insert into Outcome values(17,3,'20010913 00:00:00.000','1500.00');
insert into Outcome values(18,3,'20010914 00:00:00.000','1150.00');

                                                                                                                                                                                                                                                                 
--------Income_o --------------
insert into Income_o values(1,'20010322 00:00:00.000','15000.00');
insert into Income_o values(1,'20010323 00:00:00.000','15000.00');
insert into Income_o values(1,'20010324 00:00:00.000','3400.00');
insert into Income_o values(1,'20010413 00:00:00.000','5000.00');
insert into Income_o values(1,'20010511 00:00:00.000','4500.00');
insert into Income_o values(2,'20010322 00:00:00.000','10000.00');
insert into Income_o values(2,'20010324 00:00:00.000','1500.00');
insert into Income_o values(3,'20010913 00:00:00.000','11500.00');
insert into Income_o values(3,'20011002 00:00:00.000','18000.00');


                                                                                                                                                                                                                                                                 
---------Outcome_o -----------
insert into Outcome_o values(1,'20010314 00:00:00.000','15348');
insert into Outcome_o values(1,'20010324 00:00:00.000','3663');
insert into Outcome_o values(1,'20010326 00:00:00.000','1221');
insert into Outcome_o values(1,'20010328 00:00:00.000','2075');
insert into Outcome_o values(1,'20010329 00:00:00.000','2004');
insert into Outcome_o values(1,'20010411 00:00:00.000','3195.04');
insert into Outcome_o values(1,'20010413 00:00:00.000','4490');
insert into Outcome_o values(1,'20010427 00:00:00.000','3110');
insert into Outcome_o values(1,'20010511 00:00:00.000','2530');
insert into Outcome_o values(2,'20010322 00:00:00.000','1440');
insert into Outcome_o values(2,'20010329 00:00:00.000','7848');
insert into Outcome_o values(2,'20010402 00:00:00.000','2040');
insert into Outcome_o values(3,'20010913 00:00:00.000','1500');
insert into Outcome_o values(3,'20010914 00:00:00.000','2300');
insert into Outcome_o values(3,'20020916 00:00:00.000','2150');


drop table if exists utb;
drop table if exists utq;
drop table if exists utv;
--
CREATE TABLE utB (
	B_DATETIME timestamp NOT NULL ,
	B_Q_ID int NOT NULL ,
	B_V_ID int NOT NULL ,
	B_VOL smallint NULL 
) 
;

CREATE TABLE utQ (
	Q_ID int NOT NULL ,
	Q_NAME varchar (35) NOT NULL 
) 
;

CREATE TABLE utV (
	V_ID int NOT NULL ,
	V_NAME varchar (35) NOT NULL ,
	V_COLOR char (1) NOT NULL 
) 
;

ALTER TABLE utB ADD 
	CONSTRAINT PK_utB PRIMARY KEY  
	(
		B_DATETIME,
		B_Q_ID,
		B_V_ID
	)   
;

ALTER TABLE utQ ADD 
	CONSTRAINT PK_utQ PRIMARY KEY 
	(
		Q_ID
	)   
;

ALTER TABLE utV ADD 
	CONSTRAINT PK_utV PRIMARY KEY  
	(
		V_ID
	)   
;

ALTER TABLE utB ADD 
	CONSTRAINT FK_utB_utQ FOREIGN KEY 
	(
		B_Q_ID
	) REFERENCES utQ (
		Q_ID
	);

ALTER TABLE utB ADD 
	CONSTRAINT FK_utB_utV FOREIGN KEY 
	(
		B_V_ID
	) REFERENCES utV (
		V_ID
	)
;
                                                                                                                                                                                                                                                                
----utQ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into utQ values(1,'Square # 01');
insert into utQ values(2,'Square # 02');
insert into utQ values(3,'Square # 03');
insert into utQ values(4,'Square # 04');
insert into utQ values(5,'Square # 05');
insert into utQ values(6,'Square # 06');
insert into utQ values(7,'Square # 07');
insert into utQ values(8,'Square # 08');
insert into utQ values(9,'Square # 09');
insert into utQ values(10,'Square # 10');
insert into utQ values(11,'Square # 11');
insert into utQ values(12,'Square # 12');
insert into utQ values(13,'Square # 13');
insert into utQ values(14,'Square # 14');
insert into utQ values(15,'Square # 15');
insert into utQ values(16,'Square # 16');
insert into utQ values(17,'Square # 17');
insert into utQ values(18,'Square # 18');
insert into utQ values(19,'Square # 19');
insert into utQ values(20,'Square # 20');
insert into utQ values(21,'Square # 21');
insert into utQ values(22,'Square # 22');
insert into utQ values(23,'Square # 23');
insert into utQ values(25,'Square # 25');



                                                                                                                                                                                                                                                                 
----utV------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into utV values(1,'Balloon # 01','R');
insert into utV values(2,'Balloon # 02','R');
insert into utV values(3,'Balloon # 03','R');
insert into utV values(4,'Balloon # 04','G');
insert into utV values(5,'Balloon # 05','G');
insert into utV values(6,'Balloon # 06','G');
insert into utV values(7,'Balloon # 07','B');
insert into utV values(8,'Balloon # 08','B');
insert into utV values(9,'Balloon # 09','B');
insert into utV values(10,'Balloon # 10','R');
insert into utV values(11,'Balloon # 11','R');
insert into utV values(12,'Balloon # 12','R');
insert into utV values(13,'Balloon # 13','G');
insert into utV values(14,'Balloon # 14','G');
insert into utV values(15,'Balloon # 15','B');
insert into utV values(16,'Balloon # 16','B');
insert into utV values(17,'Balloon # 17','R');
insert into utV values(18,'Balloon # 18','G');
insert into utV values(19,'Balloon # 19','B');
insert into utV values(20,'Balloon # 20','R');
insert into utV values(21,'Balloon # 21','G');
insert into utV values(22,'Balloon # 22','B');
insert into utV values(23,'Balloon # 23','R');
insert into utV values(24,'Balloon # 24','G');
insert into utV values(25,'Balloon # 25','B');
insert into utV values(26,'Balloon # 26','B');
insert into utV values(27,'Balloon # 27','R');
insert into utV values(28,'Balloon # 28','G');
insert into utV values(29,'Balloon # 29','R');
insert into utV values(30,'Balloon # 30','G');
insert into utV values(31,'Balloon # 31','R');
insert into utV values(32,'Balloon # 32','G');
insert into utV values(33,'Balloon # 33','B');
insert into utV values(34,'Balloon # 34','R');
insert into utV values(35,'Balloon # 35','G');
insert into utV values(36,'Balloon # 36','B');
insert into utV values(37,'Balloon # 37','R');
insert into utV values(38,'Balloon # 38','G');
insert into utV values(39,'Balloon # 39','B');
insert into utV values(40,'Balloon # 40','R');
insert into utV values(41,'Balloon # 41','R');
insert into utV values(42,'Balloon # 42','G');
insert into utV values(43,'Balloon # 43','B');
insert into utV values(44,'Balloon # 44','R');
insert into utV values(45,'Balloon # 45','G');
insert into utV values(46,'Balloon # 46','B');
insert into utV values(47,'Balloon # 47','B');
insert into utV values(48,'Balloon # 48','G');
insert into utV values(49,'Balloon # 49','R');
insert into utV values(50,'Balloon # 50','G');
insert into utV values(51,'Balloon # 51','B');
insert into utV values(52,'Balloon # 52','R');
insert into utV values(53,'Balloon # 53','G');
insert into utV values(54,'Balloon # 54','B');

                                                                                                                                                                                                                                                                 
----utB------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into utB values('20030101 01:12:01.000',1,1,155);
insert into utB values('20030623 01:12:02.000',1,1,100);
insert into utB values('20030101 01:12:03.000',2,2,255);
insert into utB values('20030101 01:12:04.000',3,3,255);
insert into utB values('20030101 01:12:05.000',1,4,255);
insert into utB values('20030101 01:12:06.000',2,5,255);
insert into utB values('20030101 01:12:07.000',3,6,255);
insert into utB values('20030101 01:12:08.000',1,7,255);
insert into utB values('20030101 01:12:09.000',2,8,255);
insert into utB values('20030101 01:12:10.000',3,9,255);
insert into utB values('20030101 01:12:11.000',4,10,50);
insert into utB values('20030101 01:12:12.000',5,11,100);
insert into utB values('20030101 01:12:13.000',5,12,155);
insert into utB values('20030101 01:12:14.000',5,13,155);
insert into utB values('20030101 01:12:15.000',5,14,100);
insert into utB values('20030101 01:12:16.000',5,15,50);
insert into utB values('20030101 01:12:17.000',5,16,205);
insert into utB values('20030101 01:12:18.000',6,10,155);
insert into utB values('20030101 01:12:19.000',6,17,100);
insert into utB values('20030101 01:12:20.000',6,18,255);
insert into utB values('20030101 01:12:21.000',6,19,255);
insert into utB values('20030101 01:12:22.000',7,17,155);
insert into utB values('20030101 01:12:23.000',7,20,100);
insert into utB values('20030101 01:12:24.000',7,21,255);
insert into utB values('20030101 01:12:25.000',7,22,255);
insert into utB values('20030101 01:12:26.000',8,10,50);
insert into utB values('20030101 01:12:27.000',9,23,255);
insert into utB values('20030101 01:12:28.000',9,24,255);
insert into utB values('20030101 01:12:29.000',9,25,100);
insert into utB values('20030101 01:12:30.000',9,26,155);
insert into utB values('20030101 01:12:31.000',10,25,155);
insert into utB values('20030101 01:12:31.000',10,26,100);
insert into utB values('20030101 01:12:33.000',10,27,10);
insert into utB values('20030101 01:12:34.000',10,28,10);
insert into utB values('20030101 01:12:35.000',10,29,245);
insert into utB values('20030101 01:12:36.000',10,30,245);
insert into utB values('20030101 01:12:37.000',11,31,100);
insert into utB values('20030101 01:12:38.000',11,32,100);
insert into utB values('20030101 01:12:39.000',11,33,100);
insert into utB values('20030101 01:12:40.000',11,34,155);
insert into utB values('20030101 01:12:41.000',11,35,155);
insert into utB values('20030101 01:12:42.000',11,36,155);
insert into utB values('20030101 01:12:43.000',12,31,155);
insert into utB values('20030101 01:12:44.000',12,32,155);
insert into utB values('20030101 01:12:45.000',12,33,155);
insert into utB values('20030101 01:12:46.000',12,34,100);
insert into utB values('20030101 01:12:47.000',12,35,100);
insert into utB values('20030101 01:12:48.000',12,36,100);
insert into utB values('20030101 01:13:01.000',4,37,20);
insert into utB values('20030101 01:13:02.000',8,38,20);
insert into utB values('20030101 01:13:03.000',13,39,123);
insert into utB values('20030101 01:13:04.000',14,39,111);
insert into utB values('20030101 01:13:05.000',14,40,50);
insert into utB values('20030101 01:13:06.000',15,41,50);
insert into utB values('20030101 01:13:07.000',15,41,50);
insert into utB values('20030101 01:13:08.000',15,42,50);
insert into utB values('20030101 01:13:09.000',15,42,50);
insert into utB values('20030101 01:13:10.000',16,42,50);
insert into utB values('20030101 01:13:11.000',16,42,50);
insert into utB values('20030101 01:13:12.000',16,43,50);
insert into utB values('20030101 01:13:13.000',16,43,50);
insert into utB values('20030101 01:13:14.000',16,47,50);
insert into utB values('20030101 01:13:15.000',17,44,10);
insert into utB values('20030101 01:13:16.000',17,44,10);
insert into utB values('20030101 01:13:17.000',17,45,10);
insert into utB values('20030101 01:13:18.000',17,45,10);
insert into utB values('20030201 01:13:19.000',18,45,10);
insert into utB values('20030301 01:13:20.000',18,45,10);
insert into utB values('20030401 01:13:21.000',18,46,10);
insert into utB values('20030501 01:13:22.000',18,46,10);
insert into utB values('20030611 01:13:23.000',19,44,10);
insert into utB values('20030101 01:13:24.000',19,44,10);
insert into utB values('20030101 01:13:25.000',19,45,10);
insert into utB values('20030101 01:13:26.000',19,45,10);
insert into utB values('20030201 01:13:27.000',20,45,10);
insert into utB values('20030301 01:13:28.000',20,45,10);
insert into utB values('20030401 01:13:29.000',20,46,10);
insert into utB values('20030501 01:13:30.000',20,46,10);
insert into utB values('20030201 01:13:31.000',21,49,50);
insert into utB values('20030202 01:13:32.000',21,49,50);
insert into utB values('20030203 01:13:33.000',21,50,50);
insert into utB values('20030204 01:13:34.000',21,50,50);
insert into utB values('20030205 01:13:35.000',21,48,1);
insert into utB values('20000101 01:13:36.000',22,50,50);
insert into utB values('20010101 01:13:37.000',22,50,50);
insert into utB values('20020101 01:13:38.000',22,51,50);
insert into utB values('20020601 01:13:39.000',22,51,50);
insert into utB values('20030101 01:13:05.000',4,37,185);

drop table if exists outcomes;
drop table if exists ships;
drop table if exists classes;
drop table if exists battles;

CREATE TABLE Battles (
	name varchar (20) NOT NULL ,
	date timestamp NOT NULL 
) 
;

CREATE TABLE Classes (
	class varchar (50) NOT NULL ,
	type varchar (2) NOT NULL ,
	country varchar (20) NOT NULL ,
	numGuns smallint NULL ,
	bore real NULL ,
	displacement int NULL 
) 
;

CREATE TABLE Ships (
	name varchar (50) NOT NULL ,
	class varchar (50) NOT NULL ,
	launched smallint NULL 
) 
;

CREATE TABLE Outcomes (
	ship varchar (50) NOT NULL ,
	battle varchar (20) NOT NULL ,
	result varchar (10) NOT NULL 
) 
;

ALTER TABLE Battles ADD 
	CONSTRAINT PK_Battles PRIMARY KEY 
	(
		name
	)   
;

ALTER TABLE Classes ADD 
	CONSTRAINT PK_Classes PRIMARY KEY
	(
		class
	)   
;

ALTER TABLE Ships ADD 
	CONSTRAINT PK_Ships PRIMARY KEY  
	(
		name
	)   
;

ALTER TABLE Outcomes ADD 
	CONSTRAINT PK_Outcomes PRIMARY KEY
	(
		ship,
		battle
	)   
;

ALTER TABLE Ships ADD 
	CONSTRAINT FK_Ships_Classes FOREIGN KEY 
	(
		class
	) REFERENCES Classes (
		class
	) 
;

ALTER TABLE Outcomes ADD 
	CONSTRAINT FK_Outcomes_Battles FOREIGN KEY 
	(
		battle
	) REFERENCES Battles (
		name
	)
;
                                                                                                                                                                                                                                                               
----Classes------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into Classes values('Bismarck','bb','Germany',8,15,42000);
insert into Classes values('Iowa','bb','USA',9,16,46000);
insert into Classes values('Kongo','bc','Japan',8,14,32000);
insert into Classes values('North Carolina','bb','USA',12,16,37000);
insert into Classes values('Renown','bc','Gt.Britain',6,15,32000);
insert into Classes values('Revenge','bb','Gt.Britain',8,15,29000);
insert into Classes values('Tennessee','bb','USA',12,14,32000);
insert into Classes values('Yamato','bb','Japan',9,18,65000);



                                                                                                                                                                                                                                                                 
----Battles------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into Battles values('Guadalcanal','19421115 00:00:00.000');
insert into Battles values('North Atlantic','19410525 00:00:00.000');
insert into Battles values('North Cape','19431226 00:00:00.000');
insert into Battles values('Surigao Strait','19441025 00:00:00.000');
insert into battles values ('#Cuba62a'   , '19621020');
insert into battles values ('#Cuba62b'   , '19621025');



                                                                                                                                                                                                                                                                 
----Ships------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into Ships values('California','Tennessee',1921);
insert into Ships values('Haruna','Kongo',1916);
insert into Ships values('Hiei','Kongo',1914);
insert into Ships values('Iowa','Iowa',1943);
insert into Ships values('Kirishima','Kongo',1915);
insert into Ships values('Kongo','Kongo',1913);
insert into Ships values('Missouri','Iowa',1944);
insert into Ships values('Musashi','Yamato',1942);
insert into Ships values('New Jersey','Iowa',1943);
insert into Ships values('North Carolina','North Carolina',1941);
insert into Ships values('Ramillies','Revenge',1917);
insert into Ships values('Renown','Renown',1916);
insert into Ships values('Repulse','Renown',1916);
insert into Ships values('Resolution','Renown',1916);
insert into Ships values('Revenge','Revenge',1916);
insert into Ships values('Royal Oak','Revenge',1916);
insert into Ships values('Royal Sovereign','Revenge',1916);
insert into Ships values('Tennessee','Tennessee',1920);
insert into Ships values('Washington','North Carolina',1941);
insert into Ships values('Wisconsin','Iowa',1944);
insert into Ships values('Yamato','Yamato',1941);
insert into Ships values('South Dakota','North Carolina',1941) ;




                                                                                                                                                                                                                                                                 
----Outcomes------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ 
insert into Outcomes values('Bismarck','North Atlantic','sunk');
insert into Outcomes values('California','Surigao Strait','OK');
insert into Outcomes values('Duke of York','North Cape','OK');
insert into Outcomes values('Fuso','Surigao Strait','sunk');
insert into Outcomes values('Hood','North Atlantic','sunk');
insert into Outcomes values('King George V','North Atlantic','OK');
insert into Outcomes values('Kirishima','Guadalcanal','sunk');
insert into Outcomes values('Prince of Wales','North Atlantic','damaged');
insert into Outcomes values('Rodney','North Atlantic','OK');
insert into Outcomes values('Schamhorst','North Cape','sunk');
insert into Outcomes values('South Dakota','Guadalcanal','damaged');
insert into Outcomes values('Tennessee','Surigao Strait','OK');
insert into Outcomes values('Washington','Guadalcanal','OK');
insert into Outcomes values('West Virginia','Surigao Strait','OK');
insert into Outcomes values('Yamashiro','Surigao Strait','sunk');
insert into Outcomes values('California','Guadalcanal','damaged');