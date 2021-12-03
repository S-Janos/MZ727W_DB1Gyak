CREATE TABLE Kiado (
    kiadoid INT PRIMARY KEY NOT NULL,
    nev VARCHAR(50),
    alapitas DATE,
    orszag VARCHAR(20),
    varos VARCHAR(20)
);

CREATE TABLE Szerzo (
    szerzoid INT PRIMARY KEY NOT NULL,
    nev VARCHAR(50),
    alapitas DATE
);

CREATE TABLE Mufaj (
    mufajid INT PRIMARY KEY,
    megnevezes VARCHAR(20)
);

CREATE TABLE Enekes (
    enekesid INT PRIMARY KEY NOT NULL,
    nev VARCHAR(50),
    nem VARCHAR(20),
    szuletes DATE    
);

CREATE TABLE Album (
    albumid INT PRIMARY KEY NOT NULL,
    cim VARCHAR(50),
    kiadas DATE,
    kiadoid int,
    FOREIGN KEY (kiadoid) REFERENCES Kiado(kiadoid)
);

CREATE TABLE Dal (
    dalid INT PRIMARY KEY NOT NULL,
    cim VARCHAR(50),
    hossz INTERVAL day (0) to second(0),
    szerzoid INT,
    albumid INT,
    FOREIGN KEY (szerzoid) REFERENCES Szerzo(szerzoid),
    FOREIGN KEY (albumid) REFERENCES Album(albumid)
);

CREATE TABLE Enek (
    dalid INT,
    nyelv VARCHAR(20),
    enekesid INT,
    FOREIGN KEY (dalid) REFERENCES Dal(dalid),
    FOREIGN KEY (enekesid) REFERENCES Enekes(enekesid)
);

CREATE TABLE Mufaj_Dal (
    mufajid INT,
    dalid INT,
    FOREIGN KEY (mufajid) REFERENCES Mufaj(mufajid),
    FOREIGN KEY (dalid) REFERENCES Dal(dalid)
);
