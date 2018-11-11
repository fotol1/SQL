-- Output a transposed matrix from DB with id = @id

declare @id int
set @id = 1
select mat.id, mat.col as Row, mat.row as Col, mat.value
from Matrix as mat
where mat.id = @id
