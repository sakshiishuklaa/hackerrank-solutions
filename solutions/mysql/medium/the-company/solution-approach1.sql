-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true
-- Problem     New Companies
-- Difficulty  Medium
-- Subdomain   Advanced Select
-- Platform    HackerRank
-- Language    mysql
-- Status      Accepted
-- Submitted   2026-10-15, 03:12 a.m.
-- ──────────────────────────────────────────────────

select c.company_code,c.founder,count(distinct e.lead_manager_code),count(distinct e.senior_manager_code),count(distinct e.manager_code),count(distinct e.employee_code)
from Company c
left join Employee e
on c.company_code=e.company_code
group by c.company_code,c.founder
order by c.company_code asc;
