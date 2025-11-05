CREATE TABLE Author(Auther_Id INT PRIMARY KEY, Auther_Name VARCHAR(25) NOT NULL, Nationality VARCHAR(30));
INSERT INTO Author VALUES 
(101,"Junaid", "Turkish"),
 (102,"Arsalan", "Indian"),
 (103,"Prateek", "Indian"),
 (104,"Asif", "Indian"), 
 (105,"Safwan", "Indian");


CREATE TABLE Books
(Book_Id INT PRIMARY KEY, 
Title VARCHAR(25) NOT NULL,
 Price INT NOT NULL,
 Auther_Id INT, FOREIGN KEY (Auther_Id) REFERENCES Author (Auther_Id) );
 
 INSERT INTO Books VALUES 
 (1,"My dreams",564, 101),
 (2,"Life in Jungle",875, 102),
 (3,"Aptitude Test",879, 105),
 (4,"Java Programming",978, 103), 
 (5,"Time Management",782, 104);

 SELECT* FROM Books;
 