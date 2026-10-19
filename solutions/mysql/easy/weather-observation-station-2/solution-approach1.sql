-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-2/problem?isFullScreen=true
-- Problem     Weather Observation Station 2
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-20, 12:44 a.m.
-- ──────────────────────────────────────────────────

select round(sum(lat_n),2) as lat,round(sum(long_w),2)as lon
from station;
