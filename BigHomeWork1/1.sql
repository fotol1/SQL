-- Output a matrix from DB with id = @id


declare @id int
set @id = 1
select * from Matrix as mat
whew mat.id = @id 
