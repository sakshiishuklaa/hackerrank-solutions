-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-13/problem?isFullScreen=true
-- Problem     Weather Observation Station 13
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-20, 12:46 a.m.
-- ──────────────────────────────────────────────────

select round(sum(lat_n),4)
from station
where lat_n between 38.7880 and 137.2345;
