SELECT SUM(assignment_submissions.duration) AS total_time_spent
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE cohorts.id = 1;