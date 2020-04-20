-- [Roblox]

-- Mission: find the number of times each student attended each exam.
-- Tables: Students, Subjects, Examinations

-- Q: cant we just join examinations and students as subject name is repeated in examinations table?
-- A: what if some students never took any examinations from the specific subject? your query will not note them, whereas you should give them as 0 examinations

SELECT a.student_id,a.student_name,b.subject_name,COUNT(c.subject_name) as attended_exams
FROM Students as a
JOIN Subjects as b
LEFT JOIN Examinations as c
ON a.student_id=c.student_id AND b.subject_name=c.subject_name
GROUP BY a.student_id,b.subject_name;