-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/draw-the-triangle-1/problem?isFullScreen=true
-- Problem     Draw The Triangle 1
-- Difficulty  Easy
-- Subdomain   Alternative Queries
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-27, 11:23 p.m.
-- ──────────────────────────────────────────────────

WITH RECURSIVE Numbers AS (
    SELECT 20 AS n
    UNION ALL
    SELECT n - 1 FROM Numbers WHERE n > 1
)
SELECT REPEAT('* ', n) AS Pattern FROM Numbers;
