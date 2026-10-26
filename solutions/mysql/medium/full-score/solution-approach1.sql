-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true
-- Problem     Top Competitors
-- Difficulty  Medium
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-26, 11:57 p.m.
-- ──────────────────────────────────────────────────

select h.hacker_id,h.name
from submissions s
join hackers h
on s.hacker_id=h.hacker_id
join challenges c 
on s.challenge_id = c.challenge_id
join difficulty d 
on c.difficulty_level=d.difficulty_level
where s.score=d.score
group by h.hacker_id,h.name
having count(distinct s.challenge_id) > 1
order by count(distinct s.challenge_id)desc, h.hacker_id asc;
