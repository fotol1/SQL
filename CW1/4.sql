-- Сколько раз водитель с DriverID=2 ездил на каждом из автобусах?

select bus.BusID, count(*) as 'Amount', sum(case when mov.DriverID=2 then 1 else 0 end) as 'Amount of second driver'
from Buses as bus
cross join Movements as mov
where bus.BusID = mov.BusID
group by bus.BusID 
