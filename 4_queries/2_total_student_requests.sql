SELECT count(assistance_requests.*) as total_requests, students.name as student
FROM assistance_requests 
JOIN students ON students.id = student_id
WHERE students.name = 'Elliot Dickinson'
GROUP BY student;