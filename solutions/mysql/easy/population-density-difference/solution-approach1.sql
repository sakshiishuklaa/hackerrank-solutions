-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/population-density-difference/problem?isFullScreen=true
-- Problem     Population Density Difference
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-20, 12:42 a.m.
-- ──────────────────────────────────────────────────

select max(population)-min(population)
from city;
