<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SQL Assessment - 2</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            padding: 20px;
            background-color: #f4f4f4;
        }
        h2 {
            color: #333;
        }
        pre {
            background: #fff;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            overflow: auto;
        }
    </style>
</head>
<body>
    <h2>SQL Assessment - 2</h2>
    
    <h3>Table Creation:</h3>
    <pre>
    CREATE TABLE STUDENTS (
        StudentID NUMBER PRIMARY KEY,
        StudentName VARCHAR2(50),
        Gender CHAR(1),
        DOM DATE
    );
    </pre>

    <h3>Insert Records:</h3>
    <pre>
    INSERT INTO STUDENTS VALUES (1, 'Aarav Kumar', 'M', TO_DATE('2002-05-10', 'YYYY-MM-DD'));
    INSERT INTO STUDENTS VALUES (2, 'Sneha Reddy', 'F', TO_DATE('2001-12-15', 'YYYY-MM-DD'));
    INSERT INTO STUDENTS VALUES (3, 'Rohan Mehta', 'M', TO_DATE('2003-02-20', 'YYYY-MM-DD'));
    INSERT INTO STUDENTS VALUES (4, 'Priya Shah', 'F', TO_DATE('2000-09-25', 'YYYY-MM-DD'));
    INSERT INTO STUDENTS VALUES (5, 'Vikram Singh', 'M', TO_DATE('2002-07-14', 'YYYY-MM-DD'));
    INSERT INTO STUDENTS VALUES (6, 'Kavya Nair', 'F', TO_DATE('2001-11-01', 'YYYY-MM-DD'));
    INSERT INTO STUDENTS VALUES (7, 'Manoj Yadav', 'M', TO_DATE('2003-04-10', 'YYYY-MM-DD'));
    INSERT INTO STUDENTS VALUES (8, 'Divya Patel', 'F', TO_DATE('2002-06-18', 'YYYY-MM-DD'));
    </pre>

    <h3>SQL Queries:</h3>
    <h4>1. Display all student records:</h4>
    <pre>
    SELECT * FROM STUDENTS;
    </pre>
    
    <h4>2. Show only student names and genders:</h4>
    <pre>
    SELECT StudentName, Gender FROM STUDENTS;
    </pre>
    
    <h4>3. List students born after Jan 1, 2002:</h4>
    <pre>
    SELECT * FROM STUDENTS WHERE DOM > TO_DATE('2002-01-01', 'YYYY-MM-DD');
    </pre>
    
    <h4>4. Find the total number of male and female students:</h4>
    <pre>
    SELECT Gender, COUNT(*) AS Total FROM STUDENTS GROUP BY Gender;
    </pre>
    
    <h4>5. Display students sorted by DOB (oldest to youngest):</h4>
    <pre>
    SELECT * FROM STUDENTS ORDER BY DOM ASC;
    </pre>
    
    <h4>6. Show students whose name starts with 'S':</h4>
    <pre>
    SELECT * FROM STUDENTS WHERE StudentName LIKE 'S%';
    </pre>
    
    <h4>7. Format DOB as 'DD-MON-YYYY':</h4>
    <pre>
    SELECT StudentID, StudentName, Gender, TO_CHAR(DOM, 'DD-MON-YYYY') AS Formatted_DOB FROM STUDENTS;
    </pre>
    
    <h4>8. Display age of each student using SYSDATE - DOB:</h4>
    <pre>
    SELECT StudentName, TRUNC(MONTHS_BETWEEN(SYSDATE, DOM) / 12) AS Age FROM STUDENTS;
    </pre>
    
    <h4>9. Show all female students in descending order of names:</h4>
    <pre>
    SELECT * FROM STUDENTS WHERE Gender = 'F' ORDER BY StudentName DESC;
    </pre>
    
    <h4>10. Count how many students are born in each year:</h4>
    <pre>
    SELECT EXTRACT(YEAR FROM DOM) AS Year, COUNT(*) AS Total FROM STUDENTS GROUP BY EXTRACT(YEAR FROM DOM);
    </pre>
</body>
</html>
