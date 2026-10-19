-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem?isFullScreen=true
-- Problem     Revising Aggregations - Averages
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-20, 12:27 a.m.
-- ──────────────────────────────────────────────────

select avg(population)
from city
where district="California";
