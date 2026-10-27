-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/draw-the-triangle-2/problem?isFullScreen=true
-- Problem     Draw The Triangle 2
-- Difficulty  Easy
-- Subdomain   Alternative Queries
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-27, 11:28 p.m.
-- ──────────────────────────────────────────────────

WITH RECURSIVE Numbers AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1 FROM Numbers WHERE n < 20
)
SELECT REPEAT('* ', n) FROM Numbers;
