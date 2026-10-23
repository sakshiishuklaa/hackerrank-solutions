-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true
-- Problem     Weather Observation Station 20
-- Difficulty  Medium
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-24, 03:33 a.m.
-- ──────────────────────────────────────────────────

with cte as(
    select lat_n,state,dense_rank() over(order by lat_n desc) as rk
    from station
)
SELECT round(max(lat_n),4)
from cte
WHERE rk = (SELECT CEIL(COUNT(*) / 2.0) FROM station);
