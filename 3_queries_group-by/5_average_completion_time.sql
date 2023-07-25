SELECT students.name as student, AVG(duration) as average_completion_time
FROM assignment_submissions 
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY average_completion_time DESC;