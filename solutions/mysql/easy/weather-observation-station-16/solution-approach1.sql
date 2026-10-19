-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-16/problem?isFullScreen=true
-- Problem     Weather Observation Station 16
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-20, 01:06 a.m.
-- ──────────────────────────────────────────────────

select round(min(lat_n),4)
from station
where lat_n >38.7780;
