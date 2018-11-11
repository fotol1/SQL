-- Check if the matrix with id = @id is square

declare @id int
set @id = 1
select (case when max(mat.col)=max(mat.row) then 'Square' else 'Not square' end) as 'The answer'
from Matrix as mat
where mat.id = @id 
