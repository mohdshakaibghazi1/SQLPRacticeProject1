CREATE DATABASE RainbowSchoolSec_2;
USE RainbowSchoolSec_2;
Drop TABLE Subjects
CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName NVARCHAR(255)
);


INSERT INTO Subjects (SubjectID, SubjectName)
VALUES
    (1, 'Pyhsical Education'),
    (2, 'Accounts'),
    (3, 'Economics');




CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName NVARCHAR(50)
);


INSERT INTO Classes (ClassID, ClassName)
VALUES
    (110, '1st'),
    (112, '2nd'),
    (113, '3rd');




CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    ClassID INT,
    SubjectID INT,
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
);


INSERT INTO Students (StudentID, FirstName, LastName, ClassID, SubjectID)
VALUES
    (1, 'Varun', 'Shamra', 101, 1),    
    (2, 'Rishi', 'Deol', 102, 2),
    (3, 'Aatif ', 'Rajan', 103, 3);



CREATE INDEX IX_Students_StudentID ON Students(StudentID);

select *from Subjects

select*from Classes

select * from Students

