-- Multiply two polinomials with id = @id1 and id = @id2 and output the result

declare @id1 int, @id2 int
set @id1 = 6
set @id2 = 7

select t1.pow +t2.pow as sum_of_power, sum(t1.coef*t2.coef) as coef
from bht t1, bht t2
where (t1.id = @id1 and t2.id = @id2 and t1.coef <> 0 and t2.coef <> 0)
group by (t1.pow + t2.pow), t2.id, t1.id 
