/* Check if the equality AB=C is True
A is the polinomial with id = @id1, B - id = @id2, C - id = @id3
*/

declare @id1 INT, @id2 int, @id3 int

set @id1 = 19
set @id2 = 20
set @id3 = 21

declare @t table(pow int, coef int)
insert into @t
select t1.pow +t2.pow as sum_of_power, sum(t1.coef*t2.coef) as coef
from bht t1, bht t2
where (t1.id = @id1 and t2.id = @id2 and t1.coef <> 0 and t2.coef <> 0)
group by (t1.pow + t2.pow), t2.id, t1.id

insert into @t
select pow, coef
from bht
where id = @id3 and coef <> 0

declare @t2 table(entries int)
insert into @t2
select count(*)
from @t
where coef <> 0
group by pow,coef

select case when sum(power(entries - 2, 2)) = 0 then 1 else 0 end as The_answer
from @t2
