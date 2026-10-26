-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true
-- Problem     Average Population of Each Continent
-- Difficulty  Easy
-- Subdomain   Basic Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-26, 11:32 p.m.
-- ──────────────────────────────────────────────────

select o.continent ,floor(avg(c.population))
from country o
join city c
on o.code=c.countrycode
group by o.continent
