-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true
-- Problem     Population Census 
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-19, 02:57 a.m.
-- ──────────────────────────────────────────────────

select sum(c.population)
from city c
left join country t
on c.countrycode=t.code
where t.continent ="Asia"
