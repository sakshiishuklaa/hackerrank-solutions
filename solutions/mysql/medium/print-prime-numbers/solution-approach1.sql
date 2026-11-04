-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/print-prime-numbers/problem?isFullScreen=true
-- Problem     Print Prime Numbers
-- Difficulty  Medium
-- Subdomain   Alternative Queries
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-11-04, 11:36 p.m.
-- ──────────────────────────────────────────────────

with RECURSIVE numbers as(
    select 2 as n 
    union all
    select n+1 from numbers where n<1000
)
select group_concat(n separator '&')
from numbers p
where not exists(
    select 1 from numbers d
    where d.n>1 and  d.n < p.n and p.n % d.n = 0
);
