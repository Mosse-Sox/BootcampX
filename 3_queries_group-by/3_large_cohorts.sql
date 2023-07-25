SELECT cohorts.name as cohort, count(*) as total_students
FROM students 
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohort
HAVING count(*) >= 18
ORDER BY total_students;