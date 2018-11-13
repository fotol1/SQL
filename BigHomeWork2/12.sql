/* Solve the following equation ax^2+bx+c = 0 
If the polinomial with id = @id isn't square output 'No'
*/

declare @id int, @a float, @b float, @c float, @disc float

set @id = 23
set @b = isnull((select coef from bht where id = @id and pow = 1),0)
set @a = isnull((select coef from bht where id = @id and pow = 2),0)
set @c = isnull((select coef from bht where id = @id and pow = 0),0)

set @disc = @b*@b - 4 * @a * @c

select * from bht where id = @id

select case when max(pow) = 2
	then case when @disc < 0
		then 'No real roots'
		when @disc = 0
		then cast((-@b / (2 * @a)) as varchar(10))
		else cast((-@b + sqrt(@disc)) / (2 * @a) as nvarchar(5)) + ' and ' + cast((-@b - sqrt(@disc)) / (2 * @a) as nvarchar(5))
		end
	else
		cast('No' as nvarchar(10))
	end as result

from bht
where id = @id 
