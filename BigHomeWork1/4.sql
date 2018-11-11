-- Check if the matrix with id = @id is a vector


declare @id int
set @id = 13
select ISNULL(
(select case when (max(mat.row)-1)*(max(mat.col)-1) = 0 then 'Да' else 'Нет' end as 'The asnwer'
from Matrix as mat
group by mat.id
having mat.id = @id),'Нет') as 'The answer' 
