-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true
-- Problem     The Blunder
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-14, 01:59 a.m.
-- ──────────────────────────────────────────────────

SELECT
ceil(avg(salary)-avg(cast(REPLACE(salary, '0', '') as signed))) as clean
from Employees;
