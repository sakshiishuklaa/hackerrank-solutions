-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-17/problem?isFullScreen=true
-- Problem     Weather Observation Station 17
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-20, 01:07 a.m.
-- ──────────────────────────────────────────────────

select round(long_w,4)
from station
where lat_n=
(select min(lat_n)
from station
where lat_n > 38.7780);
