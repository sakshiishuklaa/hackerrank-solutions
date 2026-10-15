-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true
-- Problem     Top Earners
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-16, 02:36 a.m.
-- ──────────────────────────────────────────────────

with total_salary as(
    select name,months,salary,employee_id,months*salary as total
    from 
    Employee
)
select total,count(employee_id)
from total_salary
where total=(select max(total)from total_salary)
group by total;
