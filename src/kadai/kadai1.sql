SELECT DISTINCT st.name
FROM students st
INNER JOIN exam_results er
ON st.id = er.student_id
WHERE er.score <= 30

SELECT st.name
FROM students st
INNER JOIN exam_results er
ON st.id = er.student_id
WHERE st.id IN(1,3)

SELECT gender,MAX(er.score) AS max_score
FROM exam_results er
INNER JOIN students st
ON st.id = er.student_id
GROUP BY gender

SELECT er.subject,AVG(er.score) AS avg_score
FROM exam_results er
INNER JOIN students st
ON st.id = er.student_id
WHERE er.score <= 50
GROUP BY er.subject

SELECT subject,AVG(score) AS avg_score
FROM exam_results
GROUP BY subject
HAVING AVG(score) <= 50

//サブクエリ
SELECT er1.*,
(SELECT AVG(er2.score)
 FROM exam_results er2
 WHERE er1.subject = er2.subject
) AS subject_avg_score
FROM exam_results er1
