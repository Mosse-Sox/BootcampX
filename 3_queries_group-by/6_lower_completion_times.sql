SELECT students.name as student, AVG(assignment_submissions.duration) as average_completion_time, AVG(assignments.duration) as estimated_comp_time
FROM assignment_submissions 
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
WHERE students.end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_completion_time;