Create Table Cage 
(CageID varchar (2),
Section varchar (15),
SquareFeet numeric (10),
MaxWeight numeric (20),
Primary Key (CageID)
);

Create Table KeptIN 
(Species varchar (30),
aName varchar (30),
CageID VARCHAR (2),
PRIMARY KEY (CageID, Species, aName)
);

Alter Table KeptIN
Add Constraints CAGEID_FK1 Foreign Key (CageID) REFERENCES Cage(CageID); 

Create Table Animal 
(Species varchar (30),
aName varchar (30),
Weight VARCHAR (2),
PRIMARY KEY (Species, aName)
);

Alter Table KeptIN
Add Constraints Species_FK2 Foreign Key (Species,aName) REFERENCES Animal(Species,aName);

Create Table Keeper
(kName varchar (30),
Salary numeric (30),
PRIMARY KEY (kName)
);

--drop table keepers;

Create Table AttendsTo 
(kName varchar (30),
CageID varchar (2),
PRIMARY KEY (kName,CageID)
);

Alter Table AttendsTo
Add Constraints Keeper_FK3 Foreign Key (kName) REFERENCES Keeper(kName);

Alter Table AttendsTo
Add Constraints Cage_FK4 Foreign Key (CageID) REFERENCES Cage(CageID);