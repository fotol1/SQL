/* Output the product of two matrices A and B
The matrix A has id = @id1
The matrix B has id = @id2
*/

declare @id1 int
declare @id2 int
set @id1 = 1
set @id2 = 2

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

declare @to_do int
set @to_do = (select (case when @row2 = @col1 then 1 else 9 end))

if @to_do = 1
begin
	select mat1.row,mat2.col,sum(mat1.value*mat2.value) as 'value'
	from Matrix as mat1
	cross join Matrix as mat2
	where mat1.id = @id1 and mat2.id=@id2 and mat1.col = mat2.row
	group by mat1.row,mat2.col

end

else
	select 'It is not possible' 
