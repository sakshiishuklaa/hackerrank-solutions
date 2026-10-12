-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/occupations/problem?isFullScreen=true
-- Problem     Occupations
-- Difficulty  Medium
-- Subdomain   Advanced Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-13, 01:56 a.m.
-- ──────────────────────────────────────────────────

with  profession as(
    select Name, Occupation,
    row_number()over(partition by Occupation order by Name asc)as rownum
    from Occupations
)
select 
max(case when Occupation='Doctor' then Name end)as Doctor,
max(case when Occupation='Professor' then Name end)as Professor,
max(case when Occupation='Singer' then Name end)as Singer,
max(case when Occupation='Actor' then Name end)as Actor
from profession
group by rownum
order by rownum;
