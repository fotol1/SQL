-- Output the matrix with id = @id1 which contains elements on the scratching of even columns and odd rows

declare @id1 int
set @id1 = 4
select (mat.row / 2 + 1) as row, (mat.col / 2 ) as col, mat.value
from Matrix as mat
where mat.id = @id1 and mat.row % 2 = 1 and mat.col % 2 = 0 
