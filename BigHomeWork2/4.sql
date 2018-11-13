-- Check if the polinomial with id = @id has degree @n

declare @id int, @n int
set @id = 3
set @n = 2
select case when max(pow) = @n then 'да' else 'нет' end as result
from bht
where id = @id and coef <> 0 
