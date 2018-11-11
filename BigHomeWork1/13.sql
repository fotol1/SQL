/* Found a solution of equation C + X = B if it is possible
The matrix C has id = @id_C
The matrix B has id = @id_B
*/

declare @id_B int
declare @id_C int
declare @to_do int
set @id_B = 2
set @id_C = 1

select @to_do = (case when max(temp.row) = min(temp.row) and max(temp.col) = min(temp.col) then 1 else 0 end)
from (
	select max(mat.row) as row,max(mat.col) as col
	from Matrix as mat
	where mat.id = @id_B or mat.id = @id_C
	group by mat.id
	) as temp

if @to_do = 1
begin

	declare @t table(id int,row int,col int,value real)
	insert into @t
	select * from Matrix as mat
	where mat.id = @id_B

	insert into @t
	select mat.id,mat.row,mat.col,-mat.value
	from Matrix as mat
	where mat.id = @id_C

	select t.row,t.col,sum(t.value) as value
	from @t as t
	group by t.row,t.col

end

else
	select 'Solution does not exist' as 'The answer' 
