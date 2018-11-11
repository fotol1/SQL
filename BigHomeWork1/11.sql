/* Check if it's possible to multiply matrices A and B
The matrix A has id = @id1
The matrix B has id = @id2
*/

declare @id1 int
declare @id2 int
set @id1 = 3
set @id2 = 5

declare @col1 int

set @col1 = (
	select max(mat.col) as col
	from Matrix as mat
	where mat.id = @id1
	)

declare @row2 int

set @row2 = (
	select max(mat.row) as row
	from Matrix as mat
	where mat.id = @id2
	)

select (case when @row2 = @col1 then 'Yes' else 'No' end) as 'The answer' 
