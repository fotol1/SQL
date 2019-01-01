-- Вывести такие года, в которые родилось больше одного водителя

select year(dr.Date_of_Birth) as 'Year'
from Drivers as dr
group by year(dr.Date_of_Birth)
having count(*) > 2 
