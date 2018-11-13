-- Output value of the polinomial with id = @id in the point @x

declare @x INT, @id INT
set @x = 2
set @id = 3

select sum(coef*power(@x,pow)) as result
from bht
where id = @id 
