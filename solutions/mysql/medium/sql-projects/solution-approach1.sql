-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/sql-projects/problem?isFullScreen=true
-- Problem     SQL Project Planning
-- Difficulty  Medium
-- Subdomain   Advanced Join
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-17, 02:52 a.m.
-- ──────────────────────────────────────────────────

with start as(
    select start_date ,row_number()over(order by start_date)as rn 
    from Projects
    where start_date not in(select end_date from Projects)
),
end as(
    select end_date, row_number()over(order by end_date)as rn
    from Projects
    where end_date not in (select start_date from Projects)
)
select s.start_date,e.end_date
from start s
join end e
on s.rn=e.rn
order by (e.end_date-s.start_date)asc,s.start_date asc;

