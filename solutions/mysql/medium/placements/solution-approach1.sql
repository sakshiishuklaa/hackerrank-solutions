-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true
-- Problem     Placements
-- Difficulty  Medium
-- Subdomain   Advanced Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-11-05, 11:13 p.m.
-- ──────────────────────────────────────────────────

SELECT s.name
FROM students s
JOIN friends f
    ON s.id = f.id
JOIN packages p
    ON s.id = p.id
JOIN packages fp
    ON f.friend_id = fp.id
WHERE fp.salary > p.salary
ORDER BY fp.salary;
