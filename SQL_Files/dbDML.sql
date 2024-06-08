/* PILOTS */
INSERT INTO PILOT VALUES ("Lucas", "G", "George", "488701902", "AA10989093", "LucGe@american.com", 'M', '1990-01-13', '2021-01-01', 650);
INSERT INTO PILOT VALUES ("Jorge", "F", "Luke", "123456789", "AA30942092", "JorLu@american.com", 'M', '1995-03-15', '2021-02-01', 900);
INSERT INTO PILOT VALUES ("Kiana", "D", "Lara", "135792468", "DA57205736", "KiaLara@delta.com", 'F', '1993-02-03', '2020-01-01', 1300);
INSERT INTO PILOT VALUES ("Sona", "G", "Lyn", "369258147", "UA09856723", "SonaLyn@UnitedAir.com", 'F', '1992-07-01', '2021-05-21', 1000);
INSERT INTO PILOT VALUES ("Kira", NULL, "Clove", "987654321", "CA19482645", "KC1972@canadian.com", 'F', '2000-04-13', '2018-07-23', 700);
INSERT INTO PILOT VALUES ("Jia", "C", "Tokiya", "987123654", "AM04826512", "JiaTok@AeroMex.com", 'F', '1997-05-20', '2019-01-01', 850);
INSERT INTO PILOT VALUES ("Sol", NULL, "Ryusei", "246813579", "AE29172891", "SolRy@eagle.com", 'M', '1989-06-23', '2021-01-03', 2000);
INSERT INTO PILOT VALUES ("Len", "C", "Flaine", "369147258", "UPS4027162", "LenFla@UPS.com", 'M', '1998-08-21', '2021-03-06', 690);
INSERT INTO PILOT VALUES ("Kal", NULL, "Ilimari", "987369147", "FE10238658", "KalIli@FedEx.com", 'M', '2001-09-18', '2021-02-12', 1890);
INSERT INTO PILOT VALUES ("Syn", NULL, "Unera", "484019022", "JA10294798", "SynUne@JapanAir.com", 'U', '2000-01-15', '2021-01-01', 3000);

/* AIRCRAFT */
INSERT INTO AIRCRAFT VALUES ("N12345", "SNA3201234", 3675, 1000, "Airbus", "A320neo", NULL, 3790, '2018-09-12');
INSERT INTO AIRCRAFT VALUES ("N123AB", "SNA3205234", 6000, 2000, "Airbus", "A321", NULL, 3685, '1995-12-03');
INSERT INTO AIRCRAFT VALUES ("N456CD", "SNA3201253", 5000, 2000, "Boeing", "787", "8", 8823, '2015-01-01');
INSERT INTO AIRCRAFT VALUES ("N789EF", "SNA3201212", 6830, 500, "Boeing", "777", "300ER", 7880, '2007-05-05');
INSERT INTO AIRCRAFT VALUES ("N246GH", "SNA3231234", 4981, 2000, "Boeing", "737", "400", 2612 , '1990-04-12');
INSERT INTO AIRCRAFT VALUES ("N135IJ", "SNA3412534", 9347, 1000, "Embraer", "ERJ", "145", 1500 , '1990-05-03');
INSERT INTO AIRCRAFT VALUES ("N789KL", "SNA3205734", 2900, 300, "ATR", "72", "500", 1400 , '1995-10-10');

/* DESTINATION */
INSERT INTO DESTINATION VALUES ("USA", "Houston", "George H. Bush ITL", "IAH");
INSERT INTO DESTINATION VALUES ("USA", "Dallas", "Dallas Fort-Worth", "DFW");
INSERT INTO DESTINATION VALUES ("USA", "Dallas", "Love Field APT", "DAL");
INSERT INTO DESTINATION VALUES ("Japan", "Tokyo", "Narita ITL", "NRT");
INSERT INTO DESTINATION VALUES ("Japan", "Osaka", "Itami APT", "ITM");
INSERT INTO DESTINATION VALUES ("Canada", "Toronto", "Toronto Pearson APT", "YYZ");
INSERT INTO DESTINATION VALUES ("Canada", "Vancouver", "Vancouver ITL", "YVR");
INSERT INTO DESTINATION VALUES ("United Kingdom", "London", "Heathrow APT", "LHR");
INSERT INTO DESTINATION VALUES ("France", "Paris", "Charles de Gaule APT", "CDG");
INSERT INTO DESTINATION VALUES ("UAE", "Dubai", "Dubai ITL", "DXB");

/* ROUTE_ */
INSERT INTO ROUTE_ VALUES ("1234567890", 238, "IAH", "DFW");
INSERT INTO ROUTE_ VALUES ("0987654321", 238, "DFW", "IAH");
INSERT INTO ROUTE_ VALUES ("AAA1234567", 6414, "DFW", "NRT");
INSERT INTO ROUTE_ VALUES ("AAA7654321", 6414, "NRT", "DFW");
INSERT INTO ROUTE_ VALUES ("1111111111", 4441, "LHR", "DXB");
INSERT INTO ROUTE_ VALUES ("2222222222", 4441, "DXB", "LHR");
INSERT INTO ROUTE_ VALUES ("3333333333", 9593, "ITM", "CDG");

/* AIRLINE */
INSERT INTO AIRLINE VALUES ("American Airlines", "AA12345678", "USA");
INSERT INTO AIRLINE VALUES ("Delta Airlines", "DA12345678", "USA");
INSERT INTO AIRLINE VALUES ("Canadian Airlines", "CA12345678", "USA");
INSERT INTO AIRLINE VALUES ("ANA", "NA23195860", "USA");
INSERT INTO AIRLINE VALUES ("Aeromexico", "AM8894", "USA");
INSERT INTO AIRLINE VALUES ("British Airways", "BA209487", "USA");
INSERT INTO AIRLINE VALUES ("Air France", "AF10948", "USA");
INSERT INTO AIRLINE VALUES ("United Airlines", "UA38409", "USA");



/* ==RELATION TABLES== */

/* DEPART_TO */
INSERT INTO DEPART_TO VALUES ("IAH", "1234567890");
INSERT INTO DEPART_TO VALUES ("DFW", "0987654321");
INSERT INTO DEPART_TO VALUES ("DFW", "AAA1234567");
INSERT INTO DEPART_TO VALUES ("NRT", "AAA7654321");
INSERT INTO DEPART_TO VALUES ("LHR", "1111111111");
INSERT INTO DEPART_TO VALUES ("DXB", "2222222222");
INSERT INTO DEPART_TO VALUES ("ITM", "3333333333");

/* ARRIVE_TO */
INSERT INTO ARRIVE_TO VALUES ("DFW", "1234567890");
INSERT INTO ARRIVE_TO VALUES ("IAH", "0987654321");
INSERT INTO ARRIVE_TO VALUES ("NRT", "AAA1234567");
INSERT INTO ARRIVE_TO VALUES ("DFW", "AAA7654321");
INSERT INTO ARRIVE_TO VALUES ("DXB", "1111111111");
INSERT INTO ARRIVE_TO VALUES ("LHR", "2222222222");
INSERT INTO ARRIVE_TO VALUES ("CDG", "3333333333");

/* OPERATE_ */
INSERT INTO OPERATE_ VALUES ("488701902", "1234567890");
INSERT INTO OPERATE_ VALUES ("123456789", "0987654321");
INSERT INTO OPERATE_ VALUES ("135792468", "AAA1234567");
INSERT INTO OPERATE_ VALUES ("484019022", "AAA7654321");
INSERT INTO OPERATE_ VALUES ("369258147", "1111111111");
INSERT INTO OPERATE_ VALUES ("369258147", "2222222222");
INSERT INTO OPERATE_ VALUES ("135792468", "3333333333");

/* ASSIGNED_TO */
INSERT INTO ASSIGNED_TO VALUES ("N123AB", "1234567890");
INSERT INTO ASSIGNED_TO VALUES ("N123AB", "0987654321");
INSERT INTO ASSIGNED_TO VALUES ("N456CD", "AAA1234567");
INSERT INTO ASSIGNED_TO VALUES ("N789EF", "AAA7654321");
INSERT INTO ASSIGNED_TO VALUES ("N123AB", "1111111111");
INSERT INTO ASSIGNED_TO VALUES ("N123AB", "2222222222");
INSERT INTO ASSIGNED_TO VALUES ("N789KL", "3333333333");

/* BASED_AT */
INSERT INTO BASED_AT VALUES ("488701902", "DFW");
INSERT INTO BASED_AT VALUES ("123456789", "DFW");
INSERT INTO BASED_AT VALUES ("135792468", "IAH");
INSERT INTO BASED_AT VALUES ("369258147", "DAL");
INSERT INTO BASED_AT VALUES ("987654321", "IAH");
INSERT INTO BASED_AT VALUES ("987123654", "YYZ");
INSERT INTO BASED_AT VALUES ("246813579", "DFW");

/* PARKED_AT */
INSERT INTO PARKED_AT VALUES ("N12345", "DFW");
INSERT INTO PARKED_AT VALUES ("N123AB", "DFW");
INSERT INTO PARKED_AT VALUES ("N456CD", "IAH");
INSERT INTO PARKED_AT VALUES ("N789EF", "YYZ");
INSERT INTO PARKED_AT VALUES ("N246GH", "DXB");
INSERT INTO PARKED_AT VALUES ("N135IJ", "DXB");
INSERT INTO PARKED_AT VALUES ("N789KL", "ITM");

/* COMMAND_ */
INSERT INTO COMMAND_ VALUES ("488701902", "N12345");
INSERT INTO COMMAND_ VALUES ("123456789", "N12345");
INSERT INTO COMMAND_ VALUES ("135792468", "N456CD");
INSERT INTO COMMAND_ VALUES ("369258147", "N789EF");
INSERT INTO COMMAND_ VALUES ("987654321", "N123AB");
INSERT INTO COMMAND_ VALUES ("246813579", "N135IJ");
INSERT INTO COMMAND_ VALUES ("484019022", "N789KL");

/* WORKS_FOR */
INSERT INTO WORKS_FOR VALUES ("488701902", "AA12345678");
INSERT INTO WORKS_FOR VALUES ("123456789", "AA12345678");
INSERT INTO WORKS_FOR VALUES ("135792468", "DA12345678");
INSERT INTO WORKS_FOR VALUES ("369258147", "UA38409");
INSERT INTO WORKS_FOR VALUES ("987654321", "CA12345678");
INSERT INTO WORKS_FOR VALUES ("987123654", "AM8894");
INSERT INTO WORKS_FOR VALUES ("246813579", "AA12345678");

/* OWNS_ */
INSERT INTO OWNS_ VALUES ("AA12345678", "N12345");
INSERT INTO OWNS_ VALUES ("AA12345678", "N123AB");
INSERT INTO OWNS_ VALUES ("DA12345678", "N456CD");
INSERT INTO OWNS_ VALUES ("NA23195860", "N789EF");
INSERT INTO OWNS_ VALUES ("AF10948", "N246GH");
INSERT INTO OWNS_ VALUES ("AA12345678", "N135IJ");
INSERT INTO OWNS_ VALUES ("NA23195860", "N789KL");