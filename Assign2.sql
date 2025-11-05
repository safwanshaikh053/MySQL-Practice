USE safwandb;
CREATE TABLE Studentsnew (student_d INT PRIMARY KEY AUTO_INCREMENT, 
student_name VARCHAR(30) NOT NULL ,
Email VARCHAR(35) UNIQUE,
is_active BOOLEAN DEFAULT TRUE );

INSERT INTO studentsnew VALUES
(1, "Shaikh Safwan", "safwanshaikh053@gmail.com", TRUE),
(2, "Quazi Zaid", "Quazix=zaid053@gmail.com", TRUE),
(3, "Syed Hadi", "syedhadi053@gmail.com", TRUE),
(4, "Shaikh Arsalan", "shaikharsalan053@gmail.com", TRUE),
(5, "Shaikh Junaid", "shaikhjunaidh053@gmail.com", TRUE);

INSERT INTO studentsnew VALUES
(6, "Ali Alkaseri", "alialkaseri053@gmail.com", TRUE),
(7, "Abdallah ALkaseri", "abdallah053@gmail.com", TRUE),
(8, "MD Mujahid", "mdmujahid@gmail.com", TRUE),
(9, "Syed Yamin", "yaminsyed053@gmail.com", TRUE),
(10, "Khan Basheer", "khanbasheer053@gmail.com", TRUE);

SELECT*FROM studentsnew;

CREATE TABLE courses (course_id INT PRIMARY KEY AUTO_INCREMENT, 
course_name VARCHAR(100) NOT NULL ,
duration_months INT NOT NULL);

INSERT INTO courses VALUES
(1, "PG-DAC", "6"),
(2, "PG-DBDA", "8"),
(3, "MECH", "24"),
(4, "CIVIL", "24"),
(5, "Artificial Intelligence", "10"),
(6, "Machine Learning", "12"),
(7, "DBMS", "3"),
(8, "Operating Systems", "10"),
(9, "Cyber Security", "12"),
(10, "Web Development", "9");
SELECT*FROM courses;

CREATE TABLE enrollments (enrollment_id INT PRIMARY KEY AUTO_INCREMENT, 
student_id INT, FOREIGN KEY (student_id) REFERENCES Studentsnew (student_d),
course_id INT, FOREIGN KEY (course_id)  REFERENCES courses (course_id),
is_completed  BOOLEAN DEFAULT FALSE);

INSERT INTO enrollments VALUES
(101,5, 10, TRUE),
(102,4, 8, TRUE),
(103,3, 9, FALSE),
(104,1, 2, TRUE),
(105,9, 1, TRUE),
(106,7, 4, FALSE),
(107,8, 3, TRUE),
(108,10, 5, FALSE),
(109,4, 7, TRUE),
(110,2, 6, FALSE);
SELECT*FROM enrollments;
