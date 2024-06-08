CREATE DATABASE IF NOT EXISTS AIRLINE_MANAGER;
USE AIRLINE_MANAGER;

CREATE TABLE PILOT ( 
    Fname VARCHAR(20) NOT NULL,
    MInit CHAR,
    Lname VARCHAR(20) NOT NULL,
    SSN VARCHAR(9) NOT NULL,
    PilotID VARCHAR(10) NOT NULL,
    Email VARCHAR(50),
    Gender CHAR NOT NULL,
    BDay DATE NOT NULL,
    StrtDate DATE NOT NULL,
    FltHours INT NOT NULL,
    
    CONSTRAINT PK_SSN PRIMARY KEY (SSN)
);

CREATE TABLE AIRCRAFT (
    TailNum VARCHAR(6) NOT NULL,
    SN VARCHAR(10) NOT NULL,
    AirTime INT NOT NULL,
    HourTilMaint INT NOT NULL,
    Manufact VARCHAR(20) NOT NULL,
    Model VARCHAR(20) NOT NULL,
    CodeSize VARCHAR(10),
    FltRange INT NOT NULL,
    StartOfServ DATE NOT NULL,

    CONSTRAINT PK_TN PRIMARY KEY (TailNum)
);

CREATE TABLE DESTINATION (
    Country VARCHAR(20) NOT NULL,
    City VARCHAR(20) NOT NULL,
    APName VARCHAR(20) NOT NULL,
    IATA VARCHAR(3) NOT NULL,

    CONSTRAINT PK_IATA PRIMARY KEY (IATA),
    UNIQUE (IATA)
);

CREATE TABLE ROUTE_ (
    FlightNo VARCHAR(10) NOT NULL,
    Dist INT NOT NULL,
    DepIATA VARCHAR(3) NOT NULL,
    ArrIATA VARCHAR(3) NOT NULL,

    CONSTRAINT PK_FLIGHTNO PRIMARY KEY (FlightNo)
);

CREATE TABLE AIRLINE (
    AirlName VARCHAR(20) NOT NULL,
    AirlID VARCHAR(10) NOT NULL,
    Country VARCHAR(20),

    CONSTRAINT PK_ANNAMEID PRIMARY KEY (AirlID),
    UNIQUE (AirlName)
);



/* RELATIONS */

CREATE TABLE DEPART_TO (
    dIATA VARCHAR(3) NOT NULL,
    dFlightNo VARCHAR(10) NOT NULL,

    CONSTRAINT PK_DEPART PRIMARY KEY (dIATA, dFlightNo),
    CONSTRAINT FK_dIATA FOREIGN KEY (dIATA) REFERENCES DESTINATION (IATA),
    CONSTRAINT FK_dFlightNo FOREIGN KEY (dFlightNo) REFERENCES ROUTE_ (FlightNo)
);

CREATE TABLE ARRIVE_TO (
    aIATA VARCHAR(3) NOT NULL,
    aFlightNo VARCHAR(10) NOT NULL,

    CONSTRAINT PK_ARRIVE PRIMARY KEY (aIATA, aFlightNo),
    CONSTRAINT FK_arrIATA FOREIGN KEY (aIATA) REFERENCES DESTINATION (IATA),
    CONSTRAINT FK_arrFlightNo FOREIGN KEY (aFlightNo) REFERENCES ROUTE_ (FlightNo)
);

CREATE TABLE OPERATE_ (
    oSSN VARCHAR(9) NOT NULL,
    oFlightNo VARCHAR(10) NOT NULL,

    CONSTRAINT PK_OPERATE PRIMARY KEY (oSSN, oFlightNo),
    CONSTRAINT FK_oSSN FOREIGN KEY (oSSN) REFERENCES PILOT (SSN),
    CONSTRAINT FK_oFlightNo FOREIGN KEY (oFlightNo) REFERENCES ROUTE_ (FlightNo)
);

CREATE TABLE ASSIGNED_TO (
    asnTailNum VARCHAR(6) NOT NULL,
    asnFlightNo VARCHAR(10) NOT NULL,

    CONSTRAINT PK_ASSIGNED PRIMARY KEY (asnTailNum, asnFlightNo),
    CONSTRAINT FK_asnTailNum FOREIGN KEY (asnTailNum) REFERENCES AIRCRAFT (TailNum),
    CONSTRAINT FK_asnFlightNo FOREIGN KEY (asnFlightNo) REFERENCES ROUTE_ (FlightNo)
);

CREATE TABLE BASED_AT (
    bSSN VARCHAR(9) NOT NULL,
    bIATA VARCHAR(3) NOT NULL,

    CONSTRAINT PK_BASED PRIMARY KEY (bSSN, bIATA),
    CONSTRAINT FK_bSSN FOREIGN KEY (bSSN) REFERENCES PILOT (SSN),
    CONSTRAINT FK_bIATA FOREIGN KEY (bIATA) REFERENCES DESTINATION (IATA)
);

CREATE TABLE PARKED_AT (
    pTailNum VARCHAR(6) NOT NULL,
    pIATA VARCHAR(3) NOT NULL,

    CONSTRAINT PK_PARKED PRIMARY KEY (pTailNum, pIATA),
    CONSTRAINT FK_pTailNum FOREIGN KEY (pTailNum) REFERENCES AIRCRAFT (TailNum),
    CONSTRAINT FK_pIATA FOREIGN KEY (pIATA) REFERENCES DESTINATION (IATA)
);

CREATE TABLE COMMAND_ (
    cSSN VARCHAR(9) NOT NULL,
    cTailNum VARCHAR(6) NOT NULL,

    CONSTRAINT PK_COMMAND PRIMARY KEY (cSSN, cTailNum),
    CONSTRAINT FK_cSSN FOREIGN KEY (cSSN) REFERENCES PILOT (SSN),
    CONSTRAINT FK_cTailNum FOREIGN KEY (cTailNum) REFERENCES AIRCRAFT (TailNum)
);

CREATE TABLE WORKS_FOR (
    wSSN VARCHAR(9) NOT NULL,
    wAirlID VARCHAR(10) NOT NULL,

    CONSTRAINT PK_WORKS PRIMARY KEY (wSSN, wAirlID),
    CONSTRAINT FK_wSSN FOREIGN KEY (wSSN) REFERENCES PILOT (SSN),
    CONSTRAINT FK_wAirlID FOREIGN KEY (wAirlID) REFERENCES AIRLINE (AirlID)
);

CREATE TABLE OWNS_ (
    ownAirlID VARCHAR(10) NOT NULL,
    ownTailNum VARCHAR(6) NOT NULL,

    CONSTRAINT PK_OWNS PRIMARY KEY (ownAirlID, ownTailNum),
    CONSTRAINT FK_ownAirlID FOREIGN KEY (ownAirlID) REFERENCES AIRLINE (AirlID),
    CONSTRAINT FK_ownTailNum FOREIGN KEY (ownTailNum) REFERENCES AIRCRAFT (TailNum)
);

CREATE VIEW	PILOTCOMMANDS_
AS SELECT	Fname, MInit, Lname, TailNum
FROM		PILOT, AIRCRAFT, COMMAND_
WHERE		SSN = cSSN AND TailNum = cTailNum;