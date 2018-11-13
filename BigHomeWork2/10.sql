-- Check if all of coefficients of the polinomial with id = @id are integer

declare @id int
set @id = 2
select case when sum(power(coef - ceiling(coef),2)) > 0 then 'нет' else 'да' end as result
from bht
where id = @id 
