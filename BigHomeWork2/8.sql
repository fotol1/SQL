-- Check if the polinomial with id = @id is full square

declare @id int, @a float, @b float, @c float, @disc float
set @id = 1

set @b = isnull((select coef from bht where id = @id and pow = 1),0)
set @a = isnull((select coef from bht where id = @id and pow = 2),0)
set @c = isnull((select coef from bht where id = @id and pow = 0),0)

set @disc = @b*@b - 4 * @a * @c

select case when max(pow) = 2 and @disc = 0
	then 'Да'
	else 'Нет'
	end as The_answer
from bht
where id = @id 
