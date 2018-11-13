-- Output number of positive, negative and zero coefficients of polinomial with id = @id

declare @id INT
set @id = 1

select sum(case when coef > 0 then 1 else 0 end) as pos,
	sum(case when coef < 0 then 1 else 0 end) as negative,
	max(pow) + 1 - sum(case when coef <> 0 then 1 else 0 end) as nullev
from bht
where id = @id and coef <> 0 
