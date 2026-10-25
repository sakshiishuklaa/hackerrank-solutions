-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true
-- Problem     African Cities
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-25, 08:38 p.m.
-- ──────────────────────────────────────────────────

select c.name
from city c
left join country o
on c.CountryCode=o.Code
where o.continent='Africa'
