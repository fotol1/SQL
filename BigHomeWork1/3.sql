-- Output the matrix with id = @id multiplied by number = @k

declare @id int
declare @k real
set @id = 1
set @k = 2
select mat.id,mat.row,mat.col, @k*mat.value as Value
from Matrix as mat
where mat.id = @id 
