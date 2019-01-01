-- Вывести регион, к которому принадлежит заданный город

declare @id int
set @id = 5
select reg.Region
from Regions as reg
cross join Towns as tow
where tow.RegionID = reg.RegionID and tow.TownID = @id 
