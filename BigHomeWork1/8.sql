/* Create a matrix D with 2 rows. Let's consider
that D sets the coordinates. The coordinates of rows
are saved in the first row of D. And thecoordinates of
columns are saved in the second row of D. 
Ouput elements with coordinates from D from matrix with id = @id2 
*/

declare @id_d int
declare @id2 int
set @id_d = 10
set @id2 = 3

declare @t table(row int,col int)
insert into @t
select mat1.value as row, mat2.value as col
from Matrix as mat1
cross join Matrix as mat2
where mat1.id = @id_d and mat2.id=@id_d and mat1.row = 1 and mat2.row = 2 and mat1.col = mat2.col

select mat.value
from @t as t
cross join Matrix as mat
where mat.id = @id2 and t.row = mat.row and t.col = mat.col 
