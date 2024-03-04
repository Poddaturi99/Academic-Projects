show databases;

drop database if exists photoCollageManagementSystem;
create database if not exists photoCollageManagementSystem;
use photoCollagemanagementSystem;

SET SQL_SAFE_UPDATES=0;

CREATE TABLE if not exists photo (
  photoID INT auto_increment,
  AlbumID INT,
  LocationID INT,
  MemberID INT,
  Title VARCHAR(255),
  Description VARCHAR(255),
  Privacy VARCHAR(50),
  UploadDate DATE,
  View INT,
  ImagePath VARCHAR(50),
  PRIMARY KEY (PhotoID)
);

insert into photo values 
(1,10,100,1000, 'India',' Description for India', 'Public', '2021-03-27',0, '/path/10/1.jpg '),
(2,11,101,1001, 'Reception',' Description for Receprion', 'Public', '2021-10-27',12, '/path/11/2.jpg '),
(3,20,102,1002, 'Wedding',' Description for Wedding', 'Public', '2021-03-28',14, '/path/20/3.jpg '),
(4,20,102,1002, 'Wedding',' Description for Wedding', 'Public', '2021-03-29',16, '/path/20/4.jpg '),
(5,30,103,1003, 'Anniversary',' Description for Anniversary', 'Public', '2019-12-12',23, '/path/30/5.jpg '),
(6,30,103,1003, 'Anniversary',' Description for Anniversary', 'Private', '2019-01-12',25, '/path/30/6.jpg '),
(7,45,145,1045, 'Birthday',' Description for Birthday', 'Private', '2021-02-17',34, '/path/45/7.jpg '),
(8,53,153,1053, 'Trip',' Description for Trip', 'Private', '2021-04-18',46, '/path/53/8.jpg '),
(9,64,164,1064, 'Bali',' Description for Bali', 'Private', '2022-05-02',75, '/path/64/9.jpg '),
(10,28,128,1028, 'Texas',' Description for Texas', 'Public', '2016-06-22',1, '/path/28/10.jpg '),
(11,73,173,1073, 'Dallas',' Description for Dallas', 'Public', '2017-07-23',0, '/path/73/11.jpg '),
(12,24,124,1024, 'School',' Description for School', 'Public', '2021-08-01',1, '/path/24/12.jpg '),
(13,64,164,1064, 'College',' Description for College', 'Public', '2023-01-12',4, '/path/64/13.jpg '),
(14,73,173,1073, 'Graduation Day',' Description for Graduation Day', 'Private', '2022-09-13',1, '/path/73/14.jpg '),
(15,73,173,1073, 'Graduation Day',' Description for Graduation Day', 'Private', '2021-11-27',6, '/path/73/15.jpg '),
(16,99,199,1099, 'Propose Day',' Description for Propose Day', 'Private', '2021-12-12',7, '/path/99/16.jpg '),
(17,11,101,1001, 'Reception',' Description for Reception', 'Public', '2021-03-27',4, '/path/11/17.jpg '),
(18,20,102,1002, 'Wedding',' Description for Wedding', 'Public', '2021-10-27',8, '/path/20/18.jpg '),
(19,20,102,1002, 'Wedding',' Description for Wedding', 'Public', '2021-03-28',8, '/path/20/19.jpg '),
(20,30,103,1003, 'Anniversary',' Description for Anniversary', 'Public', '2021-03-29',9, '/path/30/20.jpg '),
(21,30,103,1003, 'Anniversary',' Description for Anniversary', 'Private', '2019-12-12',11, '/path/30/21.jpg '),
(22,45,145,1045, 'Birthday',' Description for Birthday', 'Private', '2019-01-12',12, '/path/45/22.jpg '),
(23,53,153,1053, 'Trip',' Description for Trip', 'Private', '2021-02-17',43, '/path/53/23.jpg '),
(24,64,164,1064, 'Bali',' Description for Bali', 'Private', '2021-04-18',5, '/path/64/24.jpg '),
(25,28,128,1028, 'Texas',' Description for Texas', 'Public', '2022-05-02',6, '/path/28/25.jpg '),
(26,73,173,1073, 'Dallas',' Description for Dallas', 'Public', '2016-06-22',77, '/path/73/26.jpg '),
(27,24,124,1024, 'School',' Description for School', 'Public', '2017-07-23',8, '/path/24/27.jpg '),
(28,64,164,1064, 'College',' Description for College', 'Public', '2021-08-01',23, '/path/64/28.jpg '),
(29,73,173,1073, 'Graduation Day',' Description for Graduation Day', 'Private', '2023-01-12',24, '/path/73/29.jpg '),
(30,73,173,1073, 'Graduation Day',' Description for Graduation Day', 'Private', '2022-09-13',5, '/path/73/30.jpg '),
(31,99,199,1099, 'Propose Day',' Description for Propose Day', 'Private', '2021-11-27',1, '/path/99/31.jpg '),
(32,11,101,1001, 'Reception',' Description for Reception', 'Public', '2021-12-12',2, '/path/11/32.jpg '),
(33,20,102,1002, 'Wedding',' Description for Wedding', 'Public', '2021-03-27',121, '/path/20/33.jpg '),
(34,20,102,1002, 'Wedding',' Description for Wedding', 'Public', '2021-10-27',4, '/path/20/34.jpg '),
(35,30,103,1003, 'Anniversary',' Description for Anniversary', 'Public', '2021-03-28',45, '/path/30/35.jpg '),
(36,30,103,1003, 'Anniversary',' Description for Anniversary', 'Private', '2021-03-29',9, '/path/30/36.jpg '),
(37,45,145,1045, 'Birthday',' Description for Birthday', 'Private', '2019-12-12',0, '/path/45/37.jpg '),
(38,53,153,1053, 'Trip',' Description for Trip', 'Private', '2019-01-12',1, '/path/53/38.jpg '),
(39,64,164,1064, 'Bali',' Description for Bali', 'Private', '2021-02-17',4, '/path/64/39.jpg '),
(40,28,128,1028, 'Texas',' Description for Texas', 'Public', '2021-04-18',7, '/path/28/40.jpg '),
(41,73,173,1073, 'Dallas',' Description for Dallas', 'Public', '2022-05-02',8, '/path/73/41.jpg '),
(42,24,124,1024, 'School',' Description for School', 'Public', '2016-06-22',9, '/path/24/42.jpg '),
(43,64,164,1064, 'College',' Description for College', 'Public', '2017-07-23',22, '/path/64/43.jpg '),
(44,73,173,1073, 'Graduation Day',' Description for Graduation Day', 'Private', '2021-08-01',4, '/path/73/44.jpg '),
(45,73,173,1073, 'Graduation Day',' Description for Graduation Day', 'Private', '2023-01-12',7, '/path/73/45.jpg '),
(46,99,199,1099, 'Propose Day',' Description for Propose Day', 'Private', '2022-09-13',88, '/path/99/46.jpg '),
(47,11,101,1001, 'Reception',' Description for Reception', 'Public', '2021-11-27',9, '/path/11/47.jpg '),
(48,20,102,1002, 'Wedding',' Description for Wedding', 'Public', '2021-12-12',2, '/path/20/48.jpg '),
(49,20,102,1002, 'Wedding',' Description for Wedding', 'Public', '2021-03-27',6, '/path/20/49.jpg '),
(50,30,103,1003, 'Anniversary',' Description for Anniversary', 'Public', '2021-10-27',6, '/path/30/50.jpg '),
(51,30,103,1003, 'Anniversary',' Description for Anniversary', 'Private', '2021-03-28',1, '/path/30/51.jpg '),
(52,45,145,1045, 'Birthday',' Description for Birthday', 'Private', '2021-03-29',2, '/path/45/52.jpg '),
(53,53,153,1053, 'Trip',' Description for Trip', 'Private', '2019-12-12',3, '/path/53/53.jpg '),
(54,64,164,1064, 'Bali',' Description for Bali', 'Private', '2019-01-12',44, '/path/64/54.jpg ');

select * from photo;

show tables;

desc photo;

CREATE TABLE if not exists album (
  AlbumID INT NOT NULL,
  PhotoID INT NOT NULL,
  Title VARCHAR(255),
  Description VARCHAR(255),
  View INT,
  PRIMARY KEY (AlbumID),
  FOREIGN KEY (PhotoID) REFERENCES photo(PhotoID)
);

desc album;

insert into album values
(10,1,'Texas Trip','Texas Trip Description',10),
(11,2,'Dallas Trip','Dallas Trip Description',0),
(20,3,'wedding','Wedding Description',11),
(21,4,'Reception','Reception Description',24),
(22,5,'Graduation','Graduation Day Description',52),
(23,6,'Austin Trip','Austin Trip Description',163),
(24,7,'Country Side Trip','Country Side Trip Description',12),
(25,8,'India Trip','India Trip Description',1),
(26,9,'UTD','UTD  Description',18),
(27,10,'BUAN 6320','BUAN 6320  Description',10),
(28,11,'Database Class ','Database Class Description',1234),
(29,12,'Birthday ','Birthday Description',10),
(30,14,'Water Fall Trip','Water Fall Trip Description',10),
(31,16,'A and M ','A and M Trip Description',101),
(32,18,'U and T ','U and T Trip Description',1),
(33,19,'Harvard Graduation','Harvard Graduation Description',1002);

select * from album;

CREATE TABLE if not exists memberDetails (
  MemberID INT NOT NULL auto_increment,
  PhotoID INT NOT NULL,
  Name VARCHAR(255),
  Email VARCHAR(255),
  Address VARCHAR(255),
  PRIMARY KEY (MemberID),
  FOREIGN KEY (PhotoID) REFERENCES photo(PhotoID)
);

insert into memberDetails values
(23,1,'SQL','SQL@gmail.com','231 Cedar Street'),
(212,2,'Robin','Robin@gmail.com','231 Cedar Street'),
(213,3,'Barney','Barney@gmail.com','213 M G Road'),
(241,4,'Ted','Ted@gmail.com','241 Khairahtabad'),
(251,5,'Lilly','Lilly@gmail.com','251 Lilly ROad'),
(262,6,'Marshal','Marshal@gmail.com','262 MCD BLVD'),
(273,7,'Rachel','Rachel@gmail.com','2731 MC DR'),
(312,8,'Monica','Monica@gmail.com','312 Central Perk'),
(313,9,'Chandler','Chandler@gmail.com','313 West Village'),
(341,10,'Phoebe','Phoebe@gmail.com','341 Minskoff Theatre'),
(351,11,'Ross','Ross@gmail.com','351 Museum of Natural History'),
(362,12,'Joey','Joey@gmail.com','362 Magna Doodle'),
(373,13,'Janice','Janice@gmail.com','373 Janice Ave'),
(384,14,'Gunther','Gunther@gmail.com','384 Central Perk'),
(395,15,'Emily','Emily@gmail.com','395 St. Paul’s Cathedral'),
(406,16,'Mike','Mike@gmail.com','406 Ursula St'),
(417,17,'Estelle','Estelle@gmail.com','417 Estelle Leonard Talent Agency'),
(428,18,'Jack','Jack@gmail.com','428 Las Vegas'),
(439,19,'Judy','Judy@gmail.com','439 Judy Geller’s House'),
(440,20,'Ursula','Ursula@gmail.com','440 Riff’s Bar and Grill'),
(451,21,'Carol','Carol@gmail.com','451 Susan’s House'),
(462,22,'Susan','Susan@gmail.com','462 Carol’s House'),
(473,23,'Ben','Ben@gmail.com','473 Ross and Carol’s Apartment'),
(484,24,'Emma','Emma@gmail.com','484 Ross and Rachel’s Apartment'),
(495,25,'Frank','Frank@gmail.com','495 Javu Coffee Shop'),
(506,26,'Alice','Alice@gmail.com','506 Alice’s Apartment'),
(517,27,'Phoebe Jr.','PhoebeJr@gmail.com','517 Central Perk'),
(528,28,'Judy G.','JudyG@gmail.com','528 Judy Geller’s House'),
(539,29,'Mr. Heckles','MrHeckles@gmail.com','539 495 Grove Street'),
(540,30,'Dr. Long','DrLong@gmail.com','540 Dr. Long’s Office'),
(551,31,'Paolo','Paolo@gmail.com','551 Italian Restaurant'),
(562,32,'Tag','Tag@gmail.com','562 Ralph Lauren'),
(573,33,'Richard','Richard@gmail.com','573 Richard’s Apartment'),
(584,34,'Nora','Nora@gmail.com','584 Nora Tyler Bing’s House'),
(595,35,'Mr. Treeger','MrTreeger@gmail.com','595 The Building'),
(606,36,'Janine','Janine@gmail.com','606 Joey’s Apartment'),
(617,37,'Gary','Gary@gmail.com','617 Gary’s Apartment'),
(628,38,'Bonnie','Bonnie@gmail.com','628 Bonnie’s Apartment'),
(639,39,'Eddie','Eddie@gmail.com','639 Eddie’s Apartment'),
(640,40,'Frank Jr.','FrankJr@gmail.com','640 Javu Coffee Shop'),
(651,41,'Phoebe Sr.','PhoebeSr@gmail.com','651 The Street'),
(662,42,'David','David@gmail.com','662 Minskoff Theatre'),
(673,43,'Joshua','Joshua@gmail.com','673 Joshua’s Apartment'),
(684,44,'Mark','Mark@gmail.com','684 Bloomingdale’s'),
(695,45,'Mona','Mona@gmail.com','695 The Street'),
(706,46,'Charlie','Charlie@gmail.com','706 Charlie’s Office'),
(717,47,'Erica','Erica@gmail.com','717 Erica’s Apartment'),
(728,48,'Gavin','Gavin@gmail.com','728 Bloomingdale');


CREATE TABLE if not exists comment (
  commentID INT NOT NULL,
  PhotoID INT NOT NULL,
  commentDate Date,
  comment varchar(255),
  PRIMARY KEY (commentID),
  FOREIGN KEY (PhotoID) REFERENCES photo(PhotoID)
);

insert into comment values
(512,6,'2020-02-14','Blurry'),
(632,7,'2023-01-05','Out of focus'),
(981,8,'2022-05-19','Underexposed'),
(736,9,'2018-09-23','Overexposed'),
(876,10,'2022-12-31','Good Picture'),
(189,11,'2019-10-10','Perfect Picture'),
(412,12,'2023-02-28','Low Contrast'),
(912,13,'2021-07-04','Color Cast'),
(562,14,'2020-04-15','Good Picture'),
(781,15,'2022-09-12','Motion Blur'),
(381,16,'2018-11-11','Perfect Picture'),
(287,17,'2022-08-21','Good Picture'),
(613,18,'2021-05-01','Underexposed'),
(812,19,'2023-03-16','Overexposed'),
(919,20,'2020-12-31','Good Picture'),
(191,21,'2019-08-25','Perfect Picture'),
(118,22,'2021-04-16','Low Contrast'),
(216,24,'2018-03-09','Good Picture'),
(513,25,'2022-11-30','Motion Blur'),
(617,26,'2021-12-21','Perfect Picture'),
(911,27,'2023-01-01','Good Picture'),
(218,28,'2019-05-12','Underexposed'),
(715,29,'2020-06-30','Overexposed'),
(414,30,'2018-08-08','Good Picture'),
(616,31,'2022-10-12','Perfect Picture'),
(219,33,'2023-03-19','Color Cast'),
(517,35,'2022-05-05','Motion Blur'),
(913,36,'2020-07-07','Perfect Picture'),
(819,37,'2021-10-31','Good Picture'),
(818,38,'2018-12-12','Underexposed'),
(317,39,'2022-01-30','Overexposed'),
(215,40,'2020-03-22','Good Picture'),
(719,41,'2019-04-01','Perfect Picture'),
(718,42,'2023-02-28','Low Contrast'),
(217,44,'2018-07-04','Good Picture'),
(816,45,'2022-06-16','Motion Blur'),
(415,46,'2021-12-12','Perfect Picture'),
(618,47,'2023-02-18','Good Picture'),
(712,48,'2019-09-01','Underexposed'),
(312,49,'2020-10-10','Overexposed');

drop table if exists location;
CREATE TABLE if not exists location (
  locationID INT NOT NULL,
  city varchar(255),
  place varchar(255),
  Primary Key (locationID)
);


insert into location values
(100,'Dallas','University Of Texas At Dallas'),
(101,'Hyderabad','Charminar old City'),
(102,'Delhi','Parliament Building'),
(103,'New York','Statue Of Liberty'),
(104,'Hyderabad','Golconda Fort'),
(105,'Delhi','Qutub Minar'),
(106,'Paris','Eiffel Tower'),
(107,'London','Tower Bridge'),
(108,'Sydney','Sydney Harbour Bridge'),
(109,'New York','Central Park'),
(110,'Tokyo','Imperial Palace'),
(111,'Beijing','Forbidden City'),
(112,'Cairo','Karnak Temple'),
(113,'Rio de Janeiro','Sugarloaf Mountain'),
(114,'Rome','Pantheon'),
(115,'Barcelona','Park Guell'),
(116,'Dubai','Palm Jumeirah'),
(117,'Moscow','St. Basils Cathedral'),
(118,'Hyderabad','Birla Mandir'),
(119,'Berlin','Reichstag Building'),
(120,'Amsterdam','Van Gogh Museum'),
(121,'Vienna','Schönbrunn Palace'),
(122,'Budapest','Buda Castle'),
(123,'Athens','Acropolis of Athens'),
(124,'Edinburgh','Edinburgh Castle'),
(125,'Florence','Uffizi Gallery'),
(126,'Istanbul','Hagia Sophia'),
(127,'Jerusalem','Western Wall'),
(128,'Kuala Lumpur','Petronas Twin Towers'),
(129,'London','Buckingham Palace'),
(130,'Lisbon','Belem Tower'),
(131,'Madrid','Royal Palace of Madrid'),
(132,'Marrakech','Djemaa el-Fna'),
(133,'Mexico City','Chapultepec Castle'),
(134,'Montreal','Notre-Dame Basilica'),
(135,'Nairobi','Nairobi National Park'),
(136,'Oslo','Viking Ship Museum'),
(137,'Prague','Charles Bridge'),
(138,'Reykjavik','Hallgrímskirkja'),
(139,'San Francisco','Golden Gate Bridge'),
(140,'Seoul','Gyeongbokgung Palace'),
(141,'Singapore','Marina Bay Sands'),
(142,'Stockholm','Vasa Museum'),
(143,'São Paulo','São Paulo Museum of Art'),
(144,'London','Westminster Abbey'),
(145,'Toronto','CN Tower'),
(146,'Vancouver','Capilano Suspension Bridge'),
(147,'Venice','St. Marks Basilica'),
(148,'Washington DC','White House'),
(149,'Zurich','Grossmünster'),
(150,'Sydney','Bondi Beach');

show tables;

CREATE TABLE if not exists Tag_Photo (
  PhotoID INT NOT NULL,
  TagID INT,
  PRIMARY KEY (TagID),
  FOREIGN KEY (PhotoID) REFERENCES photo(PhotoID)
);


Insert into Tag_Photo values 
(1,202),
(2,319),
(10,241),
(13,228),
(15,342),
(3,168),
(4,596),
(6,727),
(7,919),
(8,634),
(9,443),
(11,337),
(12,417),
(14,689),
(16,718),
(17,614),
(18,550),
(19,402),
(20,294),
(21,259),
(22,186),
(23,137),
(24,79),
(25,47),
(26,21),
(27,19),
(28,16),
(29,11),
(30,9),
(31,7),
(32,6),
(33,5),
(34,4),
(35,3),
(36,321),
(37,2),
(38,22),
(39,123),
(40,113),
(41,1114),
(42,1231),
(43,211),
(44,411),
(45,561),
(46,790),
(47,129),
(48,214),
(49,516),
(50,222);

CREATE TABLE if not exists Type_T (
photoID INT NOT NULL,
Photographer_Name Varchar(50) NOT NULL,
Type VARCHAR(255),
FOREIGN KEY (photoID) REFERENCES photo(photoID)
);

insert into Type_T values
('1','Manish Daria','Potrait'),
('2','Melissa_Marly','Landscape'),
('3','Janey_Sandra','Candid'),
('4','Alia_Reddy','Traditional'),
('5','Susan_Mary','Panoramic'),
('6', 'Jacob_Lopez', 'Street Photography'),
('7', 'Emily_Rose', 'Nature'),
('8', 'Oliver_Walker', 'Black and White'),
('9', 'Evelyn_Moon', 'Macro'),
('10', 'James_Thomas', 'Cityscape'),
('11', 'Megan_Lewis', 'Fashion'),
('12', 'Isaac_Marshall', 'Abstract'),
('13', 'Natalie_Jones', 'Portrait'),
('14', 'Benjamin_Wong', 'Astrophotography'),
('15', 'Sophia_Lin', 'Travel'),
('16', 'Daniel_Kim', 'Night'),
('17', 'Emma_Liu', 'Documentary'),
('18', 'Ethan_Chen', 'Fine Art'),
('19', 'Ava_Wang', 'Wildlife'),
('20', 'David_Lee', 'Architecture'),
('21', 'Grace_Kim', 'Food'),
('22', 'William_Chen', 'Urban'),
('23', 'Chloe_Zhang', 'Sports'),
('24', 'Samuel_Li', 'Seascape'),
('25', 'Abigail_Smith', 'HDR'),
('26', 'Lucas_Kang', 'Family'),
('27', 'Madison_Chen', 'Pet'),
('28', 'Noah_Chen', 'Sunset'),
('29', 'Sofia_Garcia', 'Underwater'),
('30', 'Mia_Martinez', 'Fashion Editorial'),
('31', 'Ethan_Lin', 'Street Art'),
('32', 'Avery_Davis', 'Action'),
('33', 'Aiden_Hernandez', 'Product'),
('34', 'Aria_Rodriguez', 'Documentary Wedding'),
('35', 'Caleb_Fernandez', 'Wilderness'),
('36', 'Aaliyah_Lopez', 'Abstract Nature'),
('37', 'Elijah_Sanchez', 'Portrait with Natural Light'),
('38', 'Amelia_Gonzalez', 'Fashion Runway'),
('39', 'Alexander_Cruz', 'Industrial'),
('40', 'Lily_Carter', 'Beach'),
('41', 'Dylan_Martinez', 'Lifestyle'),
('42', 'Hannah_Hall', 'Infrared'),
('43', 'Gabriel_Sanchez', 'Adventure'),
('44', 'Audrey_Smith', 'Architecture Interior'),
('45', 'Jayden_Garcia', 'Boudoir'),
('46', 'Alyssa_Rodriguez', 'Car'),
('47', 'Sebastian_Davis', 'Fine Art Nude'),
('48', 'Aubrey_Martinez', 'Fashion Beauty'),
('49', 'Diego_Hernandez', 'Aerial'),
('50', 'Nora_Lopez', 'Landscape Astrophotography');

ALTER TABLE type_t
ADD COLUMN Water_Mark VARCHAR(50);

create table if not exists client_T
(
  PhotoID INT NOT NULL,
  ClientID INT Not NULL default 0,
  ClientName varchar(50),
  NumberOfPhotos Int default 0,
  Primary KEY(ClientID),
  FOREIGN KEY (PhotoID) REFERENCES photo(PhotoID)
);

insert into client_T values
(1,221,'Joey Tribiani', 125),
(2,285,'Srikanth', 12),
(3,12004,'Barney', 2512),
(4,786,'Monica Geller', 421),
(5,1053,'Chandler Bing', 389),
(6,669,'Rachel Green', 287),
(7,1234,'Phoebe Buffay', 584),
(8,2468,'Ross Geller', 802),
(9,1498,'Mike Hannigan', 152),
(10,3752,'Janice Hosenstein', 235),
(11,4321,'Gunther', 84),
(12,9130,'Emily Waltham', 602),
(13,2857,'Paolo', 323),
(14,5432,'Carol Willick', 178),
(15,6789,'Ben Geller', 54),
(16,2985,'Judy Geller', 212),
(17,2569,'Jack Geller', 138),
(18,3617,'Ursula Buffay', 437),
(19,4242,'Estelle Leonard', 76),
(20,1230,'Richard Burke', 356),
(21,3908,'Nora Tyler Bing', 208),
(22,5773,'Charlie Wheeler', 169),
(23,1632,'David', 97),
(24,2345,'Dr. Leonard Green', 192),
(25,3674,'Gavin Mitchell', 121),
(26,1298,'Mark Robinson', 78),
(27,4093,'Jill Green', 91),
(28,6432,'Frank Buffay Jr.', 148),
(29,765,'Amy Green', 286),
(30,7321,'Paul Stevens', 223),
(31,9812,'Pete Becker', 413),
(32,2231,'Eddie Menuek', 89),
(33,7542,'Tag Jones', 117),
(34,1345,'Gary', 76),
(35,3012,'Mr. Heckles', 56),
(36,7654,'Mike', 134),
(37,8765,'Mr. Treeger', 65),
(38,9898,'Mr. Zelner', 34),
(39,4352,'Danny', 78),
(40,8899,'Mrs. Geller', 101),
(41,2243,'Mrs. Bing', 72),
(42,3476,'Mrs. Buffay', 89),
(43,6901,'Mrs. Adelman', 46),
(44,4421,'Mrs. Green', 76),
(45,9810,'Mrs. Tribiani', 92),
(46,5542,'Mrs. Stevens', 56),
(47,7786,'Mrs. Willick', 31),
(48,1098,'Mrs. Mitchell', 45),
(49,9231,'Mr. Waltham', 123),
(50,7890,'Mr. Geller Sr.', 98);

create table if not exists event_T
(
  PhotoID INT NOT NULL,
  ClientID INT Not NULL default 0,
  PhotorapherID INT NOT NULL,
  eventID INT NOT NULL,
  eventName varchar(50),
  Primary KEY(ClientID),
  FOREIGN KEY (PhotoID) REFERENCES photo(PhotoID)
);

insert into event_T values
(1,221,4218,1001,'Wedding '),
(2,285,1232,1002,'Graduation Day'),
(3,12004,4376,1003,'Birthday Party'),
(4,786,3985,1004,'Corporate Event'),
(5,1053,7845,1005,'Baby Shower'),
(6,669,1267,1006,'Engagement Party'),
(7,1234,2579,1007,'Anniversary Celebration'),
(8,2468,3980,1008,'Charity Fundraiser'),
(9,1498,5438,1009,'Office Party'),
(10,3752,6589,1010,'Retirement Party'),
(11,4321,2345,1011,'Welcome Home Party'),
(12,9130,1234,1012,'Bridal Shower'),
(13,2857,8765,1013,'Housewarming Party'),
(14,5432,9876,1014,'Holiday Party'),
(15,6789,5768,1015,'New Years Eve Celebration'),
(16,2985,4567,1016,'Graduate School Reunion'),
(17,2569,9087,1017,'Family Reunion'),
(18,3617,1879,1018,'Bachelor Party'),
(19,4242,3625,1019,'Bachelorette Party'),
(20,1230,1098,1020,'Bon Voyage Party'),
(21,3908,3652,1021,'House Party'),
(22,5773,4569,1022,'Barbecue Party'),
(23,1632,1436,1023,'Surprise Party'),
(24,2345,6589,1024,'Sweet 16 Party'),
(25,3674,4321,1025,'Graduate School Graduation'),
(26,1298,4567,1026,'High School Reunion'),
(27,4093,6789,1027,'Thanksgiving Dinner'),
(28,6432,7856,1028,'Easter Brunch'),
(29,8765,9823,1029,'Christmas Party'),
(30,7321,7321,1030,'Super Bowl Party'),
(31,9812,5231,1031,'Summer Solstice Party'),
(32,2231,8214,1032,'New Moon Gathering'),
(33,7542,4738,1033,'Full Moon Party'),
(34,1345,9031,1034,'Music Festival'),
(35,3012,3458,1035,'Movie Night'),
(36,7654,1278,1036,'Game Night'),
(37,876,2569,1037,'Book Club Meeting'),
(38,9898,5342,1038,'Wine Tasting'),
(39,4352,1230,1039,'Art Exhibit Opening'),
(40,8899,3489,1040,'Fashion Show'),
(41,2243,9812,1041,'Food Festival'),
(42,3476,5463,1042,'Comic Con'),
(43,6901,2309,1043,'Renaissance Fair'),
(44,4421,2908,1044,'Science Fair'),
(45,9810,8234,1045,'Trade Show'),
(46,5542,9810,1046,'Craft Fair'),
(47,7786,3475,1047,'Garden Show'),
(48,1098,3902,1048,'Antique Show'),
(49,9231,6837,1049,'Pet Show'),
(50,7890,2314,1050,'Antique Show');

create table if not exists Photographers_T
(
PhotoID INT NOT NULL,
PhotographerID INT Not NULL default 0,
Photographer_Name varchar(50),
Photographer_Number Varchar(15),
Type_of_Photography Varchar(50),
Primary KEY(PhotographerID),
FOREIGN KEY (PhotoID) REFERENCES photo(PhotoID)
);

insert into photographers_T values
('1','101','Vishal_Kumar','9876512345','Fashion'),
('2','102','Anushka_Reddy','7654329801','Wildlife'),
('3','103','Swathi_Sheri','9785618290','Lifestyle'),
('4','105','Aneela_Geller','9030191817','Sports'),
('5','106','Rahul_Kapoor','8765432190','Potrait'),
('6','107','Tanvi_Singh','7890123456','Beauty'),
('7','108','Karthik_Raju','9034567890','Entertainment'),
('8','109','Nidhi_Patel','9876543210','Food'),
('9','110','Siddharth_Mehta','8901234567','Travel'),
('10','111','Sakshi_Gupta','9012345678','Fitness'),
('11','112','Ravi_Rathod','7654321980','Gaming'),
('12','113','Amit_Kumar','6789012345','Photography'),
('13','114','Aarav_Jain','7890654321','Art'),
('14','115','Prachi_Desai','8901674321','Fashion'),
('15','116','Aryan_Raj','9012789456','Wildlife'),
('16','117','Nitya_Mishra','9876341209','Lifestyle'),
('17','118','Himanshu_Sharma','7654981230','Sports'),
('18','119','Sanjay_Kapoor','7890213456','Technology'),
('19','120','Shreya_Goyal','8901234567','Beauty'),
('20','121','Rahul_Kumar','9012345678','Entertainment'),
('21','122','Sneha_Rao','7654321890','Food'),
('22','123','Vikas_Jain','6789012453','Travel'),
('23','124','Anjali_Mehta','7890654301','Fitness'),
('24','125','Karan_Sharma','8901674592','Gaming'),
('25','126','Sonia_Singh','9012789456','Food'),
('26','127','Priyanka_Chawla','9876341029','Art'),
('27','128','Gaurav_Kumar','7654981320','Fashion'),
('28','129','Shweta_Sharma','7890213654','Wildlife'),
('29','130','Ramesh_Mishra','8901234765','Lifestyle'),
('30','131','Rohit_Jain','9012345876','Sports'),
('31','132','Aparna_Deshmukh','7654321765','Food'),
('32','133','Avinash_Rai','6789012345','Beauty'),
('33','134','Jyoti_Sharma','7890654321','Entertainment'),
('34','135','Kunal_Mehta','8901674321','Food'),
('35','136','Vivek_Gupta','9012789456','Travel'),
('36','137','Jaya_Kapoor','9876341209','Fitness'),
('37','138','Mukesh_Yadav','7654981230','Gaming'),
('38','139','Ashok_Kumar','7890213456','Sports'),
('39','140','Priya_Singh','8901234567','Art'),
('40','141','Riya_Shah','9012345678','Fashion'),
('41','142','Aditya_Mahajan','7654321980','Wildlife'),
('42','143','Rajiv_Bansal','6789012345','Lifestyle'),
('43','144','Sudha_Goyal','7890654321','Sports'),
('44','145','Bhavesh_Mehta','8901674321','Art'),
('45','146','Rajeev_Malik','8899776655','Art'),
('46','147','Neha_Sharma','7788990011','Food'),
('47','148','Amit_Singh','9988776655','Travel'),
('48','149','Priya_Rai','8877665544','Music'),
('49','150','Rahul_Mehta','7766554433','Fitness'),
('50','151','Sana_Khan','6655443322','Art'),
('51','152','Shreyas_Reddy','5544332211','Science'),
('52','153','Kavya_Patel','4433221100','Potrait'),
('53','154','Siddharth_Jain','3322110099','Fashion');

create table if not exists PhotoPrint (
PrintID int,
PhotoID int,
PrintType varchar(10),
PRIMARY KEY (PrintID),
FOREIGN KEY (PhotoID) REFERENCES photo(PhotoID)
);

insert into photoprint values
(1,1,'HardCopy'),
(2,1,'SoftCopy'),
(3,2,'HardCopy'),
(4,3,'HardCopy'),
(5,4,'SoftCopy'),
(6,5,'HardCopy'),
(7,6,'HardCopy'),
(8,7,'SoftCopy'),
(9,7,'HardCopy'),
(10,8,'HardCopy'),
(11,8,'HardCopy'),
(12,9,'HardCopy'),
(13,10,'HardCopy'),
(14,11,'HardCopy'),
(15,14,'HardCopy'),
(16,16,'SoftCopy'),
(17,16,'HardCopy'),
(18,15,'HardCopy'),
(19,18,'HardCopy'),
(20,17,'HardCopy'),
(21,19,'HardCopy'),
(22,20,'SoftCopy'),
(23,22,'HardCopy'),
(24,23,'HardCopy'),
(25,24,'SoftCopy'),
(26,26,'HardCopy'),
(27,27,'HardCopy'),
(28,28,'SoftCopy'),
(29,29,'HardCopy'),
(30,30,'HardCopy'),
(31,32,'SoftCopy'),
(32,33,'HardCopy'),
(33,34,'HardCopy'),
(34,35,'HardCopy'),
(35,36,'SoftCopy'),
(36,40,'SoftCopy'),
(37,40,'HardCopy'),
(38,41,'HardCopy'),
(39,42,'HardCopy'),
(40,42,'SoftCopy'),
(41,43,'HardCopy'),
(42,44,'HardCopy'),
(43,45,'HardCopy'),
(44,45,'SoftCopy'),
(45,46,'HardCopy'),
(46,47,'HardCopy'),
(47,48,'HardCopy'),
(48,48,'SoftCopy'),
(49,49,'HardCopy'),
(50,50,'HardCopy');

insert into photoprint values
(51,51,'HardCopy'),
(52,52,'SoftCopy'),
(53,53,'HardCopy'),
(54,54,'HardCopy');

-- Retrieve album and photo grapher detailsfrom album table and photographers table
Select album.albumID,album.title,album.description,photographers_t.Photographer_Name,photographers_t.Photographer_Number from album join photographers_t on album.photoID = photographers_t.photoid;

show tables;
select * from client_T;

-- Left join on photos and print type - 
select photoprint.photoid, printtype from photoprint left join photo on photoprint.photoid = photo.photoid;

-- Retrieve Photographer Name, Type and type of Photography from photographers_t and type table
select photographers_t.PhotoGrapher_Name,type_t.type,photographers_t.Type_of_photography from type_t join photographers_t on type_t.photoid = photographers_t.photoid;

-- Retrieve the names of all photographers who have taken a photo for a Mike Hanningan:
SELECT p.Photographer_Name
FROM Photographers_T p
JOIN photo ph ON p.photoID = ph.photoID
JOIN client_T c ON ph.photoID = c.photoID
WHERE c.Clientname = 'Mike Hannigan';
-- Retrieve the name of all photographers who have not taken a photo for a Joey Tribiani:
SELECT p.Photographer_Name
FROM Photographers_T p
LEFT JOIN photo ph ON p.photoID = ph.photoID
AND ph.photoID = (SELECT clientID FROM client_T WHERE ClientName = 'Joey Tribiani')
WHERE ph.PhotoID IS NULL;

/* 
Dheeraj Reddy Chilukuri
Creating an Audit Table for the comments table
The Audit Table gets updated whenever the comments on a photo changes
*/
drop table if exists comments_audit;
CREATE TABLE if not exists comments_audit (
  commentID INT,
  oldComment VARCHAR(50),
  newComment VARCHAR(50),
  action VARCHAR(10) NOT NULL,
  timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

/* 
Dheeraj Reddy Chilukuri
Creating a trigger for the comments_audit table
The Audit Table gets updated whenever the comments on a photo gets updated
*/
drop trigger if exists comments_audit_trigger;
select * from comment;
DELIMITER //
CREATE TRIGGER comments_audit_trigger
BEFORE UPDATE on comment
FOR EACH ROW
BEGIN
DECLARE action_type VARCHAR(10);
    SET action_type = 'UPDATE';
  INSERT INTO comments_audit (commentID, oldComment, newComment, action)
  VALUES (OLD.commentID, old.comment, new.comment, action_type);
END //

select * from comment;

Update comment
set comment = 'Too low Contrast' where commentID = 102;

Update comment
set comment = 'Good Resolved' where commentID = 118;

select * from comments_audit;

alter table comments_audit
add column photoCopy varchar(10);

/*
Dheeraj Reddy Chilukuri
Creating a trigger for the comments_audit table
The Audit Table gets updated whenever the tag on a photo gets deleted
*/
drop trigger if exists tag_delete_trigger;
DELIMITER //
CREATE TRIGGER tag_delete_trigger
after DELETE on tag_photo
FOR EACH ROW
BEGIN
DECLARE action_type VARCHAR(10);
    SET action_type = 'DELETE';
  INSERT INTO comments_audit (action, photoCopy)
  VALUES (action_type, old.tagID);
END //

select * from tag_photo;
delete from tag_photo where tagID = 919;
select * from comments_audit where action = "DELETE";

/*
Dheeraj Reddy Chilukuri
Creating a view for the photo table which retriews the last one year photos
*/
create view latestPhotos AS select * from photo
Where UploadDate > DATE_SUB(NOW(), INTERVAL 1 YEAR) order by uploadDate desc;

select * from latestPhotos;


/*
Dheeraj Reddy Chilukuri
Creating a trigger for the comments_audit table
The Audit Table gets updated whenever a new comment is added to a photo
*/
drop trigger if exists comments_audit_trigger_insert;
DELIMITER //
CREATE TRIGGER comments_audit_trigger_insert
BEFORE INSERT on comment
FOR EACH ROW
BEGIN
DECLARE action_type VARCHAR(10);
DECLARE old_Comment VARCHAR(10);
    SET action_type = 'INSERT';
    SET old_Comment = NULL;
  INSERT INTO comments_audit (commentID, oldComment, newComment, action)
  VALUES (NEW.commentID, old_Comment, new.comment, action_type);
END //

INSERT into comment Values (102,12,'2021-04-01','Blurry picture');
insert into comment values (
92,2,"2022-04-01",'Eyes CLosed'),
(93,4,"2022-04-02",'bad lighting'),
(94,5,"2022-04-03",'Good Picture'),
(95,9,"2022-04-04",'Over exposure'),
(97,14,"2022-04-01",'Eyes CLosed'),
(98,23,"2022-05-01",'Good Picture'),
(99,24,"2022-04-01",'Eyes CLosed'),
(101,37,"2022-04-01",'Bad Lighting');

select * from comments_audit;


/* Rohit/Sushmitha */
DELIMITER //
CREATE PROCEDURE totalMembers()
BEGIN
DECLARE total INT;
DECLARE i INT DEFAULT 0;
SELECT COUNT(*) INTO total FROM memberDetails;
WHILE i < total DO
SET i = i + 1;
END WHILE;
SELECT CONCAT('Total Members: ', total) AS 'Result';
END //
DELIMITER ;

call totalMembers();

-- /* Rohit/Sushmitha */
-- DELIMITER //
-- CREATE PROCEDURE memberEmails()
-- BEGIN
-- DECLARE name VARCHAR(255);
-- DECLARE email VARCHAR(255);
-- DECLARE i INT DEFAULT 0;
-- DECLARE total INT;
-- SELECT COUNT(*) INTO total FROM memberDetails;
-- WHILE i < total DO
-- SET i = i + 1;
-- SELECT Name, Email INTO name, email FROM memberDetails WHERE MemberID = i;
-- SELECT CONCAT(name, ': ', email) AS 'Result';
-- END WHILE;
-- END //
-- DELIMITER ;

-- call memberEmails();

/* Rohit/Sushmitha */
drop procedure if exists updateAddresses;
DELIMITER //
CREATE PROCEDURE updateAddresses(member_ID INT, newAddress VARCHAR(255))
BEGIN
DECLARE i INT DEFAULT 0;
DECLARE total INT;
SELECT COUNT(*) INTO total FROM memberDetails;
WHILE i < total DO
SET i = i + 1;
UPDATE memberDetails SET Address = newAddress WHERE MemberID = member_id;
END WHILE;
SELECT CONCAT('Addresses Updated to: ', newAddress) AS 'Result';
END //
DELIMITER ;

select * from memberDetails;

call updateAddresses(23, '213 Cedar Street');

/* 
Dheeraj Reddy Chilukuri
Location table is a lookup table for Photo Table
Below function gets location from location table using location ID from photos table
*/
DELIMITER //
CREATE FUNCTION getLocationFromPhoto(ID INT)
RETURNS VARCHAR(255)
READS SQL DATA
DETERMINISTIC
BEGIN
DECLARE location VARCHAR(255);
DECLARE location_ID VARCHAR(255);
	select locationID into location_id from photo where photoID = ID;
    SELECT city into location
    FROM location
    WHERE LocationID = location_id;
    RETURN location;
END //

Select photoID, locationID, UploadDate, View, getLocationFromPhoto(2) as City from photo where photoID = 2;



/* Anushka Produtturi
This Function sets watermark column as true if type of the product is fashion
 */
 select * from type_t;
drop procedure generate_fashion_watermark;
DELIMITER //
CREATE PROCEDURE generate_fashion_watermark()
BEGIN
DECLARE WaterMark VARCHAR(50);
DECLARE TYPE_NEW VARCHAR(50);
SET watermark = "FALSE" ;
SELECT Type INTO TYPE_NEW FROM type_t
WHERE type = "Fashion" ;
IF Type_NEW = "Fashion" THEN
SET WaterMark = "TRUE";
END IF ;
Update type_t set Water_Mark = Watermark WHERE TYPE = "FASHION" ;
END //
DELIMITER ;

call generate_fashion_watermark();
select * from type_t;

/* 
Vidhi Jain
PhotoPrint Table has all the data of a photo like its copy, soft or hard and its type
The below function takes album title, print type(soft or hard) and number of photos as input and returns the total cost of all that photos
*/
DELIMITER //
CREATE FUNCTION calculate_cost(album_title VARCHAR(255), print_type VARCHAR(255), num_photos INT)
RETURNS DECIMAL(10,2)
READS SQL DATA
DETERMINISTIC
BEGIN
DECLARE cost_per_photo DECIMAL(10,2);
DECLARE cost_per_print DECIMAL(10,2);
DECLARE total_cost DECIMAL(10,2);
IF album_title IN ('wedding', 'Reception', 'Birthday') THEN
SET cost_per_photo = 30;
ELSEIF album_title IN ('Texas Trip', 'Dallas Trip', 'Austin Trip', 'Country Side Trip', 'India Trip', 'Water Fall Trip') THEN
SET cost_per_photo = 25;
ELSE
SET cost_per_photo = 15;
END IF;
IF print_type = 'hard' THEN
SET cost_per_print = 20;
ELSE
SET cost_per_print = 10;
END IF;
SET total_cost = (num_photos * cost_per_photo * cost_per_print);
RETURN total_cost;
END//
DELIMITER ;

SELECT calculate_cost('wedding', 'hard', 20);
/*
Anushka Podduturi
Function : To Count the number of photographers in a given type of photography
This function takes type of photography as input and returns number of photographers available in that cateory
*/
DELIMITER //
CREATE FUNCTION count_photographers_in_type(type_name VARCHAR(50))
RETURNS INT
READS SQL DATA
DETERMINISTIC
BEGIN
DECLARE num_photographers INT;
SELECT COUNT(*) INTO num_photographers FROM photographers_T WHERE Type_of_photography = type_name ;
RETURN num_photographers;
END //
DELIMITER ;

SELECT count_photographers_in_type('Fashion');

/* Rohit/Sushmitha */
-- DELIMITER //
-- CREATE FUNCTION getMemberCountByName(name VARCHAR(255))
-- RETURNS INT
-- BEGIN
-- DECLARE count INT;
-- SELECT getMemberCountByName('Joey');
-- RETURN count;
-- END //
-- DELIMITER ;

/* Rohit/Sushmitha */
drop function if exists getEmailAddressByID; 
DELIMITER //
CREATE FUNCTION getEmailAddressByID(member_ID INT)
RETURNS VARCHAR(255)
READS SQL DATA
DETERMINISTIC
BEGIN
DECLARE emailAddress VARCHAR(255);
SELECT Email INTO emailAddress FROM memberDetails WHERE MemberID = member_ID;
RETURN emailAddress;
END //

SELECT getEmailAddressByID(212);

/* Rohit/Sushmitha */
drop function if exists getAddressByName;
DELIMITER //
CREATE FUNCTION getAddressByName(nameForAddress VARCHAR(255))
RETURNS VARCHAR(255)
READS SQL DATA
DETERMINISTIC
BEGIN
DECLARE addressByName VARCHAR(255);
SELECT Address INTO addressByName FROM memberDetails WHERE Name = nameForAddress;
RETURN addressByName;
END //
DELIMITER ;

SELECT getAddressByName('Rachel');

SELECT * from Album;

/*
Anushka Podduturi
This function returns the count of albums whose total views are greater then the parameter passed to the funtion
 */

drop procedure if exists getAlbumsbyView;
DELIMITER //
CREATE PROCEDURE GetAlbumsByView(Viewcount INT)
BEGIN
DECLARE views INT;
SELECT count(View) into views FROM Album WHERE View > Viewcount;
Select views as ViewCount;
END //
DELIMITER ;

Call GetAlbumsByView(100);