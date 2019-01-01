-- Вывести автобусы с самым "недавним" годом производства


select top 1 with ties bus.Year,count(*) as 'Amount'
from Buses as bus
group by bus.Year
order by count(*) desc 
