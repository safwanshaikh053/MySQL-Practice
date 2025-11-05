USE safwandb;
CREATE TABLE Bank (Id INT PRIMARY KEY UNIQUE, Bank_name VARCHAR(30) NOT NULL UNIQUE, Email VARCHAR(35) UNIQUE);
INSERT INTO Bank VALUES
(1, "Kotak Mahindra Bank", "kotakhelpline@gmail.com"),
(2, "State Bank of India", "statebankofindiahelpline@gmail.com"),
(3, "Union Bank", "Unionbankhelpline@gmail.com"),
(4, "HDFC Bank", "hdfcbankhelpline@gmail.com"),
(5, "Axis Bank", "axisbankhelpline@gmail.com"),
(6, "Canara Bank", "Canarbankhelpline@gmail.com");


SELECT*FROM Bank;
CREATE TABLE Branches (Id INT PRIMARY KEY UNIQUE,IFSC_code VARCHAR(10)  NOT NULL UNIQUE, Branch_name VARCHAR(35) NOT NULL);

INSERT INTO Branches VALUES
(1,"KKBK0811", "Thane"),
(2,"UNION0231", "Navi Mumbai"),
(3,"HDFC0342", "Kurla"),
(4,"SBI0987", "Panvel"),
(5,"AXIS0876", "Colaba"),
(6,"CANARA0673", "Panvel"),
(7,"AXIS0746", "Mahim"),
(8,"CANARA0982", "Kurla"),
(9,"HDFC0392", "Mahim"),
(10,"SBI0439", "Nariman Point"),
(11,"KKBK0549", "Navi Mumbai"),
(12,"UNION0064", "Colaba");

ALTER TABLE Branches ADD CONSTRAINT fk_bank_ref FOREIGN KEY (bank_ref) REFERENCES Bank(Id);
SELECT*FROM Branches;
SELECT*FROM Branches WHERE IFSC_code LIKE "HDF%";

