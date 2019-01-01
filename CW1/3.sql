-- Посчитать, сколько городов входит в один регион

select t.RegionID, count(*) as 'Amount'
from Towns as t
cross join Regions as reg
where t.RegionID = reg.RegionID
group by t.RegionID 
