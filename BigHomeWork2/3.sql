-- Output the polinomial with id = @par1 multiplied by @number

declare @par1 INT, @number INT
set @par1 = 2
set @number = 10
select id, pow, coef * @number
from bht
where id = @par1 
