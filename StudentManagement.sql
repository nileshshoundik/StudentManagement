create database StudentManagement;
use StudentManagement;

create table Students (
StudentID int primary key auto_increment,
Name varchar(100),
Gender char(1),
Age int,
Grade varchar(2),
MathScore int,
ScienceScore int,
EnglishScore int );

insert into Students ( Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore)
values ('Nil','M', 25, 'A', 99,98,85),
('Preety', 'F',24, 'A', 98,96,89),
('Honey', 'F',22,'B', 70,65,88),
('Nilesh', 'M', 24, 'A', 88,95,69),
('Sweta', 'F', 23, 'C', 69,63,59),
('Karan', 'M', 22, 'B', 75,69,86),
('Sneha', 'F', 21, 'C', 81,61,45),
('Ankit', 'M', 24, 'B', 74,71,49),
('Anisha', 'F', 22, 'A', 85,88,83),
('Chiku', 'F', 23, 'C', 78,62,67);

-- show all students details.
select * from Students;

-- average score in each subject
select avg(MathScore) as avgMath from Students;
select avg(ScienceScore) as avgScience from Students;
select avg(EnglishScore) as avgEnglish from Students;

select avg(MathScore) as avgMath, avg(ScienceScore) as avgScience, avg(EnglishScore) as avgEnglish from Students;

-- Top Performer (highest total score)
select *, (MathScore + ScienceScore + EnglishScore) as Total from Students 
order by total desc 
limit 1;

-- Count Students per Grade
select Grade, count(*) as TotalStudents from Students 
group by Grade order by TotalStudents desc;

-- Average score by gender
select gender , avg(MathScore + ScienceScore + EnglishScore) from Students
group by gender;

-- students with math > 80
select * from Students 
where MathScore > 80;

-- update a students grade
update Students set Grade ='A' where StudentID = 7;

select * from Students;