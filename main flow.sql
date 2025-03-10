CREATE DATABASE StudentManagement;
USE StudentManagement;

CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Gender VARCHAR(1), -- 'M' or 'F'
    Age INT,
    Grade VARCHAR(10),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES
('Alice', 'F', 15, 'A', 90, 85, 88),
('Bob', 'M', 16, 'B', 75, 80, 78),
('Charlie', 'M', 15, 'A', 95, 92, 90),
('David', 'M', 17, 'C', 60, 65, 70),
('Emma', 'F', 16, 'B', 80, 85, 83),
('Fiona', 'F', 15, 'A', 88, 90, 91),
('George', 'M', 16, 'C', 70, 72, 68),
('Hannah', 'F', 17, 'B', 77, 79, 75),
('Isaac', 'M', 15, 'A', 93, 95, 92),
('Julia', 'F', 16, 'C', 62, 65, 60);
SELECT * FROM Students;
SELECT 
    AVG(MathScore) AS AvgMath,
    AVG(ScienceScore) AS AvgScience,
    AVG(EnglishScore) AS AvgEnglish
FROM Students;
SELECT Name, (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;
SELECT Grade, COUNT(*) AS StudentCount
FROM Students
GROUP BY Grade;
SELECT Gender, 
    AVG(MathScore) AS AvgMath, 
    AVG(ScienceScore) AS AvgScience, 
    AVG(EnglishScore) AS AvgEnglish
FROM Students
GROUP BY Gender;
SELECT * FROM Students WHERE MathScore > 80;
UPDATE Students SET Grade = 'A' WHERE StudentID = 2;
