-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/symmetric-pairs/problem?isFullScreen=true
-- Problem     Symmetric Pairs
-- Difficulty  Medium
-- Subdomain   Advanced Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-11-06, 11:59 p.m.
-- ──────────────────────────────────────────────────

SELECT f1.x, f1.y
FROM Functions f1
JOIN Functions f2
    ON f1.x = f2.y
   AND f1.y = f2.x
WHERE f1.x <= f1.y
GROUP BY f1.x, f1.y
HAVING COUNT(*) > 1 OR f1.x < f1.y
ORDER BY f1.x;
