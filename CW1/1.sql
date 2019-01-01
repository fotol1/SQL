-- Вывести номера автобусов, содержащих цифру 9.
-- Отсортировать по году производства

select *
from Buses as bus
where bus.BusRegNo like '%[9]%'
order by bus.Year asc 
