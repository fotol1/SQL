-- Вывести самого молодого водителя

select top 1 with ties dr.DriverID,dr.Surname,dr.FirstName
from Drivers as dr
order by dr.Date_of_Birth desc 
