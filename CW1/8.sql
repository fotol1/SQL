-- Сколько длились в часах поездки из каждого города?

select mov.FromTownID,tow.Town,cast(sum(datediff(second,mov.DT_Begin,mov.DT_End))/3600.0 as numeric(10,2)) as 'Hours'
from Movements as mov
cross join Towns as tow
where mov.FromTownID = tow.TownID
group by mov.FromTownID, tow.Town 
