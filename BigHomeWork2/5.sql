-- Sum two polinomials with id = @id1 and id = @id2 and output the result

declare @id1 int, @id2 int
set @id1 = 14
set @id2 = 14

declare @t table (pow int, coef float)

insert into @t
select pow,coef from bht where id = @id1

insert into @t
select pow,coef from bht where id = @id2

select pow, sum(coef) as coef
from @t
where coef <> 0
group by pow
