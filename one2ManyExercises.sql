DROP DATABASE school;

CREATE DATABASE school;

USE school;

Select DATABASE();

CREATE TABLE students (
    id INT auto_increment PRIMARY KEY,
    first_name VARCHAR(100)
);

CREATE TABLE papers (
    title VARCHAR(100),
    grade int,
    student_id INT,
    FOREIGN KEY(student_id) REFERENCES students(id)
    ON DELETE CASCADE
);

INSERT INTO students (first_name) VALUES 
('Caleb'), 
('Samantha'), 
('Raj'), 
('Carlos'), 
('Lisa');
    
INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

SELECT first_name, title, grade
from students
INNER JOIN papers
    ON students.id = papers.student_id
ORDER BY grade DESC;

SELECT first_name, title, grade
from students
LEFT JOIN papers
    ON students.id = papers.student_id;

SELECT first_name, 
    ifnull(title, "Missing") as title, 
    ifnull(grade, 0) as grade
from students
LEFT JOIN papers
    ON students.id = papers.student_id;

SELECT first_name, 
    ifnull(avg(grade), 0) as grade
from students
LEFT JOIN papers
    ON students.id = papers.student_id
GROUP BY students.id
ORDER BY grade DESC;

SELECT first_name, 
    ifnull(avg(grade), 0) as grade,
    CASE 
        WHEN ifnull(avg(grade), 0) > 75 THEN "Passing"
        ELSE "Failing"
END AS "Passing_status  "
from students
LEFT JOIN papers
    ON students.id = papers.student_id
GROUP BY students.id
ORDER BY grade DESC;