-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
-- Problem     Weather Observation Station 18
-- Difficulty  Medium
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-22, 01:13 a.m.
-- ──────────────────────────────────────────────────

select round((max(lat_n)-min(lat_n))+(max(long_w)-min(long_w)),4)
from station
