SELECT DISTINCT st.name
FROM students st
INNER JOIN exam_results er
ON st.id = er.student_id
WHERE er.score <= 30