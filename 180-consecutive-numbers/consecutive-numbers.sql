# Write your MySQL query statement below
with cte as (select num, lag(num) over(order by id) as lag_num, lead(num) over(order by id) as lead_num from logs)

select distinct num as ConsecutiveNums from cte where num = lag_num and lag_num = lead_num;