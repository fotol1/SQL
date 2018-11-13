/* Output the solution of the following equation: ax + b = 0
If the polinomail with id = @id hasn't degree = 1 then output 'No'
*/

declare @id int, @a float, @b float

set @id = 5
set @b = (select coef from bht where id = @id and pow = 0)
set @a = (select coef from bht where id = @id and pow = 1)

select
	case when max(pow) = 1
	then cast((case when min(pow) = 1
			then 0
			else -(@b) / (@a)
			end) AS varchar(10))

	else 'No'
	end as result
from bht
where id = @id and coef <> 0 
