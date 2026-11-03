-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true
-- Problem     Contest Leaderboard
-- Difficulty  Medium
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-11-04, 12:01 a.m.
-- ──────────────────────────────────────────────────

select h.hacker_id,h.name,sum(s.score) as total_score
from hackers h
join (select hacker_id, challenge_id, MAX(score) AS score from submissions group by hacker_id,challenge_id)s ON h.hacker_id=s.hacker_id 
group by h.hacker_id,h.name
having total_score>0
ORDER BY total_score DESC, h.hacker_id ASC;
