-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true
-- Problem     Challenges
-- Difficulty  Medium
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-11-02, 11:59 p.m.
-- ──────────────────────────────────────────────────

select h.hacker_id,h.name,count(challenge_id) as c_count
from hackers h
join challenges c 
on h.hacker_id=c.hacker_id
group by hacker_id,name
HAVING c_count = (
   
    SELECT MAX(temp.cnt) 
    FROM (
        SELECT COUNT(challenge_id) AS cnt 
        FROM Challenges 
        GROUP BY hacker_id
    ) temp
)
OR c_count IN (
 
    SELECT temp.cnt 
    FROM (
        SELECT COUNT(challenge_id) AS cnt 
        FROM Challenges 
        GROUP BY hacker_id
    ) temp 
    GROUP BY temp.cnt 
    HAVING COUNT(temp.cnt) = 1
)
order by c_count DESC, h.hacker_id ASC;
