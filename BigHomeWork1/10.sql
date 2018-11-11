/* Output the sum of matrices A and B if it's possible
The matrix A has id = @id1
The matrix B has id = @id2
*/

declare @id1 int
declare @id2 int
declare @to_do int

set @id1 = 2
set @id2 = 2

select @to_do = (case when max(temp.row) = min(temp.row) and max(temp.col) = min(temp.col) then 1 else 0 end)
from (
	select max(mat.row) as row,max(mat.col) as col
	from Matrix as mat
	where mat.id = @id1 or mat.id = @id2
	group by mat.id
	) as temp
-- If it is possible to sum up
if @to_do = 1
begin
	declare @t table(id int,row int,col int,value real)
	insert into @t
	select * from Matrix as mat
	where mat.id = @id1
	insert into @t
	select * from Matrix as mat
	where mat.id = @id2
	
	select t.row,t.col,sum(t.value) as value
	from @t as t
	group by t.row,t.col

end
