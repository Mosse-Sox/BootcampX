SELECT count(assistance_requests.*) as total_requests, teachers.name as teacher
FROM assistance_requests 
JOIN teachers ON teachers.id = teacher_id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teacher;