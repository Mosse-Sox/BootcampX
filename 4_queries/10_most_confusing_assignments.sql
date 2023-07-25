SELECT 
  assignments.id as id, 
  assignments.name as name,
  assignments.day as day, 
  assignments.chapter as chapter, 
  count(assistance_requests.*) as total_requests
FROM assistance_requests
JOIN assignments ON assignments.id = assignment_id
GROUP BY 
  assignments.id,
  assignments.day,
  assignments.chapter,
  assignments.name
ORDER BY total_requests DESC;