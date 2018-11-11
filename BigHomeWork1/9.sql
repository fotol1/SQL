/* Check if it's possible to sum two matrices A and B
The matrix A has id = @id1
The matrix B has id = @id2
*/

declare @id1 int
declare @id2 int
set @id1 = 3
set @id2 = 4

select (case when max(temp.row) = min(temp.row) and max(temp.col) = min(temp.col)
then 'Yes' else 'No' end) as 'The answer'
from (
	select max(mat.row) as row,max(mat.col) as col
	from Matrix as mat
	where mat.id = @id1 or mat.id = @id2
	group by mat.id
	) as temp 
