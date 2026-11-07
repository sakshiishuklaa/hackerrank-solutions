-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/interviews/problem?isFullScreen=true
-- Problem     Interviews
-- Difficulty  Hard
-- Subdomain   Advanced Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-11-08, 12:00 a.m.
-- ──────────────────────────────────────────────────

SELECT 
    con.contest_id, 
    con.hacker_id, 
    con.name, 
    SUM(ss.total_submissions), 
    SUM(ss.total_accepted_submissions), 
    SUM(vs.total_views), 
    SUM(vs.total_unique_views)
FROM Contests con
JOIN Colleges col ON con.contest_id = col.contest_id
JOIN Challenges cha ON col.college_id = cha.college_id
LEFT JOIN (
    SELECT challenge_id, 
           SUM(total_submissions) AS total_submissions, 
           SUM(total_accepted_submissions) AS total_accepted_submissions
    FROM Submission_Stats
    GROUP BY challenge_id
) ss ON cha.challenge_id = ss.challenge_id
LEFT JOIN (
    SELECT challenge_id, 
           SUM(total_views) AS total_views, 
           SUM(total_unique_views) AS total_unique_views
    FROM View_Stats
    GROUP BY challenge_id
) vs ON cha.challenge_id = vs.challenge_id
GROUP BY con.contest_id, con.hacker_id, con.name
HAVING (SUM(ss.total_submissions) + 
        SUM(ss.total_accepted_submissions) + 
        SUM(vs.total_views) + 
        SUM(vs.total_unique_views)) > 0
ORDER BY con.contest_id;
