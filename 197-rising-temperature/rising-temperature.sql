# Write your MySQL query statement below
With pd as
(
    select id,recordDate,temperature,
    lag(temperature,1) over (order by recordDate) as PT,
    lag(recordDate,1) over (order by recordDate) as PR
    from Weather
)
select id from pd where temperature > PT and recordDate = DATE_ADD(PR,interval 1 day);