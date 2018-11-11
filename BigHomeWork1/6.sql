-- Check if the matrix with id = @id is symmetrical

declare @id int
set @id = 11
declare @cvadr int

/* Опциональная процерка на квадратичность */

select @cvadr = (case when max(mat.col)=max(mat.row) then 1 else 0 end)
from Matrix as mat
where mat.id = @id

select case when count(*) =0 and @cvadr = 1 then 'Yes' else 'No' end as 'The asnwer'
from Matrix as mat1
cross join Matrix as mat2
where mat1.id = @id and mat2.id = @id and mat1.row = mat2.col and mat1.col = mat2.row and mat1.value <> mat2.value 
