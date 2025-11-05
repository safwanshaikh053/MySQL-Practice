
CREATE TABLE Product(
	id INT NOT NULL,
    Product_id INT NOT NULL,
    Pname VARCHAR(300) NOT NULL,
    Pprice INT NOT NULL,
    Pcompany VARCHAR(300) NOT NULL,
    Pquantity INT NOT NULL,
    Available VARCHAR(30),
    PRIMARY KEY (id)

);
   
   
   
INSERT INTO Product 
VALUES 
(1,001,"RICE",35,"Kolam",25,"YES"),
(2,002,"WHEAT",32,"GARDEN",30,"YES"),
(3,003,"RICE",40,"JOKER",25,"NO"),
(4,004,"TUR DAL",59,"LACHKARI",15,"YES"),
(5,005,"Rice",90,"Basmati",25,"YES"),
(6,006,"RICE",72,"Biryani",25,"YES"),
(7,007,"RICE",42,"Wada kolam",25,"YES"),
(8,008,"MOONG",38,"LATUR",22,"NO"),
(9,009,"RICE",32,"Kolam",25,"NO"),
(10,0010,"Wheat",45,"Kali",27,"YES");


SELECT * FROM Product;

ALTER TABLE Product ADD (Name VARCHAR(30) NOT NULL,City VARCHAR(20) NOT NULL,Pincode INT NOT NULL);

SELECT * FROM Product;

UPDATE Product SET City="Mumbai" ,Pincode =400001 where id=1;
UPDATE Product SET City="Navi Mumbai" ,Pincode =467376 where id=2;
UPDATE Product SET City="panvel" ,Pincode =463768 where id=3;
UPDATE Product SET City="pune" ,Pincode =424638 where id=4;
UPDATE Product SET City="satara" ,Pincode =478666 where id=5;
UPDATE Product SET City="Ahemdabad" ,Pincode =408279 where id=6;
UPDATE Product SET City="Washim" ,Pincode =444629 where id=7;
UPDATE Product SET City="Nagpur" ,Pincode =404590 where id=8;
UPDATE Product SET City="Amravati" ,Pincode =444603 where id=9;
UPDATE Product SET City="Latur" ,Pincode =459002 where id=10;

SELECT * FROM Product;


SELECT * FROM Product
WHERE Available = "No"; 








