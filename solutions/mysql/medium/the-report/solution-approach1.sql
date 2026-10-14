-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true
-- Problem     The Report
-- Difficulty  Medium
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-15, 03:59 a.m.
-- ──────────────────────────────────────────────────

SELECT 
    CASE WHEN Grade < 8 THEN NULL ELSE Name END AS Name,
    Grade,
    Marks
FROM Students
JOIN Grades 
ON Students.Marks BETWEEN Grades.Min_Mark AND Grades.Max_Mark
ORDER BY 
    Grade DESC,
    Name ASC, 
    Marks ASC;
